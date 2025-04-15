import 'dart:io';

void main(){
  // Write a program that takes a list of strings as input and displays the shortest string in the list.
  print('Enter a list of strings separated by spaces:');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    List<String> strings = input.split(' ');
    String shortestString = strings.reduce((a, b) => a.length < b.length ? a : b);
    print('The shortest string is: $shortestString');
  } else {
    print('No input provided.');
  }
}