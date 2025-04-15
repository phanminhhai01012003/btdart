import 'dart:io';

/* Write a program that takes a list of integers as input and 
returns the maximum sum of any contiguous subarray within the list, 
with the additional constraint that the subarray must not contain any consecutive integers*/

int maxNonConsecutiveSubarraySum(List<int> nums) {
  if (nums.isEmpty) return 0;
  if (nums.length == 1) return nums[0];
  int prevMax = 0; // Maximum sum excluding the previous element
  int currMax = nums[0]; // Maximum sum including the previous element
  for (int i = 1; i < nums.length; i++) {
    int newMax = prevMax + nums[i]; // Include current element
    prevMax = currMax; // Update prevMax to the previous currMax
    currMax = currMax > newMax ? currMax : newMax; // Take the maximum
  }
  return currMax;
}
void main() {
  stdout.write('Enter a list of integers: ');
  List<int> nums = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int result = maxNonConsecutiveSubarraySum(nums);
  print('The maximum sum of non-consecutive subarray is: $result');
}