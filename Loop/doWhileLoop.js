let count = 1;

do {
    console.log("this is doing the instruction only", count)
    count++
} while (count <= 5)


////mistake i made when i don't add the number in code line number five
//final output is here  node doWhileLoop.js
// this is doing the instruction only 1
// this is doing the instruction only 2
// this is doing the instruction only 3
// this is doing the instruction only 4
// this is doing the instruction only 5



///real case of use do while loop 
///  when i need the to match the information from database to and user do wrong input because he is a gay

let ShivendraKePercentage = 84;
let userGuess;

do {
    userGuess = Number(prompt("Guess Shivendra Percentage"))
}
while(ShivendraKePercentage !== userGuess){
    console.log("Congratulations! You guessed it right.")
}

// in this function we are asigned the secret variable to 7 using the let variable decration metho and we are declarring the guess number name called userGuess 