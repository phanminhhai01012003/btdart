// Write a program that takes two numbers as inputs and displays their sum.

import 'dart:io';

void main() {
  stdout.write('First number: ');
  double num1 = double.parse(stdin.readLineSync()!);
  stdout.write('Second number: ');
  double num2 = double.parse(stdin.readLineSync()!);
  double sum = num1 + num2;
  print('The result is: $sum');
}