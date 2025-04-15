// Write a program that takes a list of numbers as input and displays the largest number in the list.

import 'dart:io';
void main() {
  print('Enter a list of numbers separated by spaces:');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    List<int> numbers = input.split(' ').map(int.parse).toList();
    int largestNumber = numbers.reduce((a, b) => a > b ? a : b);
    print('The largest number is: $largestNumber');
  } else {
    print('No input provided.');
  }
}