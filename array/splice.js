

let numbers = [10, 20, 30, 40];

numbers.splice(1, 3, 25, 35,90);

console.log(numbers);




// Output: [10, 25, 35, 40] ✅ (Replaced 20 & 30 with 25 & 35)

// array.splice(startIndex, deleteCount, item1, item2);

/// 1 is the startting of the index and 3 is the coutn of delete 
// when we give only 