"use strict";
let Numbers = [1, 2, 3, 4, 5, 6];
function twoSum(nums, target) {
  //// this outer loop run only the one time
  for (let i = 0; i < nums.length; i++) {
    for (let j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] === target) {
        return [i, j];
      }
    }
  }
  return [];
}
console.log(twoSum(Numbers, 6));
console.log(Numbers.length);
////// retuning the one below number
