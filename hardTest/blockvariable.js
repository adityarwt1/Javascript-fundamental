
function globalVariable(){
    let i = "function variable";

    if(true){
        let i = "blocked scope";
        console.log("this is inside if",i)
        
    }
    return console.log(i)

}
globalVariable()


///es6 ccan have block variable in the if condition 