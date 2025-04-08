const i = "function scope";


if(true){
    let i = "blocked scope"
    console.log("this is blocked scope forever", i)
}

console.log(i)


/// console returnn the statement funtion scope becase if is a blocake elemene of javascript.
//output will be the function scope