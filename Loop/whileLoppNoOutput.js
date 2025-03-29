"use strict"
let number = 10  // ✅ Use `let` instead of `const`
while (number > 7) {
    console.log("code is working");
    number = number - 1;  // ✅ Now, `number` can be updated
}


/// mistake for making this loop we need to declare the value of number as a variable