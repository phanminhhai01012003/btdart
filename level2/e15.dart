// Write a program that takes a list of integers as input and returns the maximum sum of any contiguous subarray within the list.
import 'dart:io';

void main(){
  stdout.write('Enter a list of integers: ');
  String? input = stdin.readLineSync();
  if(input != null && input.isNotEmpty){
    List<String> numbers = input.split(' ');
    List<int> nums = numbers.map((n) => int.parse(n)).toList();
    int maxSum = nums[0];
    int currentSum = nums[0];

    for(int i = 1; i < nums.length; i++){
      currentSum = (currentSum + nums[i] > nums[i]) ? currentSum + nums[i] : nums[i];
      maxSum = (currentSum > maxSum) ? currentSum : maxSum;
    }
    print('The maximum sum of any contiguous subarray is: $maxSum');
  }else{
    print('No input provided.');
  }
}