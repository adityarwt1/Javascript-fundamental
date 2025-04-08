const serverRequest = new Promise((resolve,reject)=>{
    const requst = false;
    if(requst){
        resolve("data found")
    }
    else{
        reject("data not found")
    }


})

serverRequest.catch(error=>{
    console.log(error);
    
});


//this trendition method to get the error by server in the we are using try annd catch to get the errror ittself