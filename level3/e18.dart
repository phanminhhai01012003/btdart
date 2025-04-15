// Write a program that takes a list of integers as input and returns the longest increasing subsequence of the numbers.
import 'dart:io';

List<int> findLongestIncreasingSubsequence(List<int> numbers) {
  if (numbers.isEmpty) return [];
  List<int> lis = List.filled(numbers.length, 1);
  for (int i = 1; i < numbers.length; i++) {
    for (int j = 0; j < i; j++) {
      if (numbers[i] > numbers[j] && lis[i] < lis[j] + 1) {
        lis[i] = lis[j] + 1;
      }
    }
  }
  int maxLength = lis.reduce((a, b) => a > b ? a : b);
  List<int> longestSubsequence = [];
  for (int i = numbers.length - 1; i >= 0; i--) {
    if (lis[i] == maxLength) {
      longestSubsequence.add(numbers[i]);
      maxLength--;
    }
  }
  return longestSubsequence.reversed.toList();
}

void main(){
  stdout.write('Enter a list of integers: ');
  String input = stdin.readLineSync()!;
  List<String> stringNumbers = input.split(' ');
  List<int> numbers = stringNumbers.map((s) => int.parse(s)).toList();
  List<int> longestSubsequence = findLongestIncreasingSubsequence(numbers);
  print('The longest increasing subsequence is: $longestSubsequence');
}