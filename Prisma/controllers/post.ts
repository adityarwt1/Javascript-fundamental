import prisma from '@/lib/prisma'
import { Post } from '@/app/generated/prisma'

// Create a new post
export async function createPost(data: {
    title: string
    content?: string
    published?: boolean
    authorId: number
}) {
    try {
        const post = await prisma.post.create({
            data,
            include: {
                author: true, // Include the author information
            },
        })
        return post
    } catch (error) {
        throw new Error(`Error creating post: ${error}`)
    }
}

// Get all posts
export async function getAllPosts() {
    try {
        const posts = await prisma.post.findMany({
            include: {
                author: true,
            },
        })
        return posts
    } catch (error) {
        throw new Error(`Error fetching posts: ${error}`)
    }
}

// Get post by ID
export async function getPostById(id: number) {
    try {
        const post = await prisma.post.findUnique({
            where: { id },
            include: {
                author: true,
            },
        })
        return post
    } catch (error) {
        throw new Error(`Error fetching post: ${error}`)
    }
}

// Update post
export async function updatePost(
    id: number,
    data: {
        title?: string
        content?: string
        published?: boolean
    }
) {
    try {
        const post = await prisma.post.update({
            where: { id },
            data,
            include: {
                author: true,
            },
        })
        return post
    } catch (error) {
        throw new Error(`Error updating post: ${error}`)
    }
}

// Delete post
export async function deletePost(id: number) {
    try {
        const post = await prisma.post.delete({
            where: { id },
        })
        return post
    } catch (error) {
        throw new Error(`Error deleting post: ${error}`)
    }
}

// Get posts by author
export async function getPostsByAuthor(authorId: number) {
    try {
        const posts = await prisma.post.findMany({
            where: { authorId },
            include: {
                author: true,
            },
        })
        return posts
    } catch (error) {
        throw new Error(`Error fetching author's posts: ${error}`)
    }
}