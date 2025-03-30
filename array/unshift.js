const array = ["aditya", "aman", "shivendra"]
 
const unshiftedItem = array.unshift(2)
console.log(unshiftedItem);

//// The unshift(value) method adds a new element to the beginning of the array.
///The console logs 4, NOT [2, "aditya", "aman", "shivendra"], because unshift() returns the array length, NOT the updated array.

// console.log(array);
// // Output: [2, "aditya", "aman", "shivendra"] ✅
