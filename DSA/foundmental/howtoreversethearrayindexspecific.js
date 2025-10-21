// reverse an array withe incex
const nums = [1, 2, 3];
let left = 1,
  right = n - 1;
while (left < right) {
  [nums[left], nums[right]] = [nums[right], nums[left]];
  left++;
  right--;
}
