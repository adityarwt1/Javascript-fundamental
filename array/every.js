let array1 = ["appple", "mango", "banana", "papaya"];

const arrayrsult1 = array1.every(element => element.length == 4)

console.log(arrayrsult1); // Output: false

let array2 = ["pear", "kiwi", "plum", "date"];

const arrayResult2 = array2.every(arr => arr.length === 4);

console.log(arrayResult2); // Output: true ✅
