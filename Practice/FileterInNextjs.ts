// export async function POST(req) {

//     try {

//         await connectDb()

//         const { formData, username, imageUrl } = await req.json()

//         const searchParams = req.nextUrl.searchParams;

//         const username = searchParams.get("username");

//         const user = await User.findOne({ username: username })

//         if (!user) {
//             return NextResponse.json({ success: false, message: "User Not Found" }. { statu })
//         }

//     }
//     catch (error) {

//     }
// }