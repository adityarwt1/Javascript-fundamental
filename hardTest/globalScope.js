// Declare the myGlobal variable below this line
let myGlobal = 10;
var oopsGlobal; 
function fun1() {
  // Assign 5 to oopsGlobal here
oopsGlobal = 5
}

// Only change code above this line

function fun2() {
  let output = "";
  if (typeof myGlobal != "undefined") {
    output += "myGlobal: " + myGlobal;
  }
  if (typeof oopsGlobal != "undefined") {
    output += " oopsGlobal: " + oopsGlobal;
  }
  return console.log(output);
}
console.log(fun2())


///scope variable declared in the inside of function and the glble variable declared outside of the box
/// we can't access the variable updatting value inside the function