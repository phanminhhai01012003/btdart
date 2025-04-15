/*Write a program that takes a list of integers as input and 
returns the maximum sum of any contiguous subarray within the list, 
with the constraint that no two adjacent elements in the subarray can be selected */
import 'dart:io';
import 'dart:math';
int maxSumNonAdjacent(List<int> arr) {
  if (arr.isEmpty) return 0;
  if (arr.length == 1) return arr[0];
  int prevPrev = 0;
  int prev = arr[0];
  for (int i = 1; i < arr.length; i++) {
    int current = max(prev, prevPrev + arr[i]);
    prevPrev = prev;
    prev = current;
  }
  return prev;
}
void main() {
  stdout.write('Enter a list of integers: ');
  List<int> arr = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int maxSum = maxSumNonAdjacent(arr);
  print('The maximum sum of any contiguous subarray is: $maxSum');
}