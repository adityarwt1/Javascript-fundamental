const score = "777";

///  for change into the number 

let changedValueOfNumber =  Number(score)
console.log(typeof changedValueOfNumber)

/// first confusion 

const secondScore = "78abc"
let ChangedType = Number(secondScore)

console.log(ChangedType); /// output will be NaN not a number

// is boolean use 

const isLoggedIn = 20 
const isBoolean =  Boolean(isLoggedIn)
console.log(isBoolean)

/// => 0 false
/// => 1 true
// => "" false
/// => "aditya" true

