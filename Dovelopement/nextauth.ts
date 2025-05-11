// // app/api/auth/[...nextauth]/route.ts
// import NextAuth from 'next-auth';
// import CredentialsProvider from 'next-auth/providers/credentials';
// import connectToDatabase from '@/lib/mongodb';
// import User from '@/models/User';
// import bcrypt from 'bcryptjs';

const authOptions = {
    providers: [
        CredentialsProvider({
            name: 'Credentials',
            credentials: {
                email: { label: 'Email', type: 'text' },
                password: { label: 'Password', type: 'password' },
            },

            async authorize(credentials) {
                try {
                    await connectToDatabase();

                    if (!credentials?.email || !credentials.password) {
                        throw new Error('Email and password are required');
                    }

                    const user = await User.findOne({ email: credentials.email });

                    if (!user) {
                        throw new Error('No user found with this email');
                    }

                    const isValid = await bcrypt.compare(
                        credentials.password,
                        user.password
                    );

                    if (!isValid) {
                        throw new Error('Incorrect password');
                    }

                    return {
                        id: user._id.toString(),
                        name: user.name,
                        email: user.email
                    };
                } catch (error) {
                    console.error('Authorization error:', error);
                    return null;
                }
            },
        }),
    ],
    callbacks: {
        async jwt({ token, user }) {
            if (user) {
                token.id = user.id;
            }
            return token;
        },
        async session({ session, token }) {
            if (token && session.user) {
                session.user.id = token.id as string;
            }
            return session;
        },
    },
    session: {
        strategy: 'jwt',
    },
    pages: {
        signIn: '/login',
        error: '/login',
    },
    secret: process.env.NEXTAUTH_SECRET,
    debug: process.env.NODE_ENV === 'development',
};

const handler = NextAuth(authOptions);

export { handler as GET, handler as POST };
export { authOptions };