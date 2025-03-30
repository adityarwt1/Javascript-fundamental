let words = ["hello", "world", ""];

let result = words.flatMap(word => word ? word.split("") : []);

console.log(result);
// Output: ["h", "e", "l", "l", "o", "w", "o", "r", "l", "d"] ✅


let users = [
    { name: "Alice", hobbies: ["Reading", "Cycling"] },
    { name: "Bob", hobbies: ["Cooking", "Gaming"] },
  ];
  
  let hobbies = users.flatMap(user => user.hobbies);
  
  console.log(hobbies);
  // Output: ["Reading", "Cycling", "Cooking", "Gaming"] ✅
   

  //flat make use for extracting the value from the array 