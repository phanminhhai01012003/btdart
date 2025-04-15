/*
Write a program that takes a list of integers as input and
returns the number of distinct subsequences of the list that sum up to a target value
For example: 
[1, 2, 3, 4, 5], target = 5
output: 2
[1, 1, 2, 3, 4], target = 5
output: 4
*/
import 'dart:io';

int countDistinctSubsequences(List<int> arr, int target) {
  int n = arr.length;
  List<List<int>> dp = List.generate(n + 1, (_) => List.filled(target + 1, 0));
  dp[0][0] = 1; // Base case: one way to make sum 0 with empty subsequence
  for (int i = 1; i <= n; i++) {
    for (int j = 0; j <= target; j++) {
      dp[i][j] = dp[i - 1][j]; // Exclude current element
      if (j >= arr[i - 1]) {
        dp[i][j] += dp[i - 1][j - arr[i - 1]]; // Include current element
      }
    }
  }
  return dp[n][target];
}

void main(){
  stdout.write('Enter a list of integers: ');
  List<int> arr = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  stdout.write('target = ');
  int target = int.parse(stdin.readLineSync()!);
  int result = countDistinctSubsequences(arr, target);
  print('The number of distinct subsequences that sum up to $target is: $result');
}