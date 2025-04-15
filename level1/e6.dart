// Write a program that takes a list of numbers as input and sorts the list in ascending order.
import 'dart:io';

void main(){
  print('Enter a list of numbers:');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    List<int> numbers = input.split(' ').map(int.parse).toList();
    numbers.sort();
    print('The sorted list is: $numbers');
  } else {
    print('No input provided.');
  }
}