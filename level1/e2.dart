// Write a program that takes a string as input and displays the length of the string.

import 'dart:io';

void main(){
  stdout.write('Enter a string: ');
  String input = stdin.readLineSync()!;
  int length = input.length;
  print('The length of the string is: $length');
}