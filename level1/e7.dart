import 'dart:io';

void main(){
  // Write a program that takes a list of strings as input and sorts them in alphabetical order.
  stdout.write('Enter a list of strings: ');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    List<String> strings = input.split(' ');
    strings.sort();
    print('The sorted list is: $strings');
  } else {
    print('No input provided.');
  }
}