import prisma from '@/lib/prisma'
import { User } from '@/app/generated/prisma'

// Create a new user
export async function createUser(data: { email: string; name?: string }) {
    try {
        const user = await prisma.user.create({
            data,
        })
        return user
    } catch (error) {
        throw new Error(`Error creating user: ${error}`)
    }
}

// Get all users
export async function getAllUsers() {
    try {
        const users = await prisma.user.findMany({
            include: {
                posts: true, // Include related posts
            },
        })
        return users
    } catch (error) {
        throw new Error(`Error fetching users: ${error}`)
    }
}

// Get user by ID
export async function getUserById(id: number) {
    try {
        const user = await prisma.user.findUnique({
            where: { id },
            include: {
                posts: true,
            },
        })
        return user
    } catch (error) {
        throw new Error(`Error fetching user: ${error}`)
    }
}

// Update user
export async function updateUser(id: number, data: { email?: string; name?: string }) {
    try {
        const user = await prisma.user.update({
            where: { id },
            data,
        })
        return user
    } catch (error) {
        throw new Error(`Error updating user: ${error}`)
    }
}

// Delete user
export async function deleteUser(id: number) {
    try {
        const user = await prisma.user.delete({
            where: { id },
        })
        return user
    } catch (error) {
        throw new Error(`Error deleting user: ${error}`)
    }
}