const array = ["aditya", "aman", "shivendra"];

const values = array.values(); // Returns an iterator object

// Using a loop to extract values
for (let value of values) {
  console.log(value);
}

// OR using the spread operator to convert iterator to an array
console.log([...values]);
