"use server"


export const badRequest = async (message:string)=> NextResponse.json<StandardApiResponse>({
    status:HttpStatusCode.BAD_REQUEST,
    success:false,
    error:HttpStatusText.BAD_REQUEST,
    message:message
},
{
    status:HttpStatusCode.BAD_REQUEST
})

export const internalServerIssue = async (error?: Error)=> NextResponse.json<StandardApiResponse>({
    status:HttpStatusCode.INTERNAL_SERVER_ERROR,
    success:false,
    error: (error as Error).message || HttpStatusText.INTERNAL_SERVER_ERROR,
    message:"Internal server issue!"
},
{
    status:HttpStatusCode.INTERNAL_SERVER_ERROR
})

export const enexpectedError  = async (message?:string)=> NextResponse.json<StandardApiResponse>({
    status:HttpStatusCode.INTERNAL_SERVER_ERROR,
    success:false,
    error:HttpStatusText.INTERNAL_SERVER_ERROR,
    message:message || "Unexpected Error!"
},
{
    status:HttpStatusCode.INTERNAL_SERVER_ERROR
})

export const conflictError = async (message?:string)=> NextResponse.json<StandardApiResponse>({
    status:HttpStatusCode.CONFLICT,
    success:false,
    error:HttpStatusText.CONFLICT,
    message:message || "Already exist!"
},
{
    status:HttpStatusCode.CONFLICT
}
)

export const notFound = async (message?:string)=> NextResponse.json<StandardApiResponse>({
    status:HttpStatusCode.NOT_FOUND,
    success:false,
    error:HttpStatusText.NOT_FOUND,
    message:message || "Not found!"
},
{
    status:HttpStatusCode.NOT_FOUND
})

export const unAuthorized = async()=> NextResponse.json<StandardApiResponse>({
    status:HttpStatusCode.UNAUTHORIZED,
    success:false,
    error:HttpStatusText.UNAUTHORIZED,
},
{
    status:HttpStatusCode.UNAUTHORIZED
})

export const searchParams = async (req:NextRequest) => req.nextUrl.searchParams
export const headers = async (req:NextRequest) => req.headers