import { NextRequest, NextResponse } from "next/server";
import connectDB from "@/lib/mongodb";

export async function POST(req: NextRequest) {
    try {
        await connectDB();

        // Your logic here
        return NextResponse.json({ success: true, message: "Connected Successfully" }, { status: 200 });
    } catch (error) {
        console.log(error);
        return NextResponse.json({ success: false, message: "Internal Server Issue" }, { status: 500 });
    }
}