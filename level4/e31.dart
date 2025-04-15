/*
Write a program that takes a list of integers as input and 
returns the maximum product of any three distinct elements in the list
For example: 
[-10, -5, 0, 1, 2, 3, 4] => 200 
*/
import 'dart:io';
int maxProductOfThree(List<int> arr) {
  if (arr.length < 3) return 0; // Not enough elements
  arr.sort();
  int n = arr.length;
  // Maximum product can be either from the three largest or two smallest and one largest
  return arr[n - 1] * arr[n - 2] * arr[n - 3] > arr[0] * arr[1] * arr[n - 1]
      ? arr[n - 1] * arr[n - 2] * arr[n - 3]
      : arr[0] * arr[1] * arr[n - 1];
}
void main() {
  stdout.write('Enter a list of integers: ');
  List<int> arr = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int result = maxProductOfThree(arr);
  print('The maximum product of any three distinct elements is: $result');
}