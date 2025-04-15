/*
Write a program that takes a list of integers as input and 
returns the length of the longest increasing subsequence of the numbers, 
with the additional constraint that no two adjacent elements in the subsequence 
can differ by more than 1.(Recommended to use reduce)
For example:
Input: [1, 2, 3, 8, 6, 3] Output: 3
Input: [1, 2, 3, 8, 3, 2, 4, 5, 6, 7, 8, 9] Output: 6
*/
import 'dart:io';

int longestIncreasingSubsequence(List<int> arr) {
  List<int> dp = List.filled(arr.length, 1);
  for (int i = 1; i < arr.length; i++) {
    for (int j = 0; j < i; j++) {
      if (arr[i] > arr[j] && (arr[i] - arr[j]).abs() <= 1) {
        dp[i] = dp[i] > dp[j] + 1 ? dp[i] : dp[j] + 1;
      }
    }
  }
  return dp.reduce((a, b) => a > b ? a : b);
}

void main() {
  stdout.write('Enter a list of integers: ');
  String input = stdin.readLineSync()!;
  List<int> arr = input.split(' ').map(int.parse).toList();
  int result = longestIncreasingSubsequence(arr);
  print(result);
}