export async function GET(request) {
    try {
        await connectDB();

        const searchParams = req.nextUrl.searchParams;
        const query = searchParams.get('query') || '';
        const category = searchParams.get('category') || '';

        let filter = {};

        if (query) {
            filter.$or = [
                { title: { $regex: query, $options: 'i' } },
                { description: { $regex: query, $options: 'i' } }
            ];
        }

        if (category) {
            filter.category = category;
        }

        const recipes = await Recipe.find(filter);

        if (!recipes || recipes.length === 0) {
            return NextResponse.json(
                { success: false, error: "No recipes found" },
                { status: 404 }
            );
        }

        return NextResponse.json({ recipes }, { status: 200 });

    } catch (error) {
        console.error("Error fetching recipes:", error);
        return NextResponse.json(
            { success: false, message: "Internal Server Error" },
            { status: 500 }
        );
    }
}