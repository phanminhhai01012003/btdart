// Write a program that takes a number as input and displays its square
import 'dart:io';
import 'dart:math';

void main(){
  stdout.write('Enter a number: ');
  double num = double.parse(stdin.readLineSync()!);
  double square = pow(num, 2) as double;
  print('The result is: $square');
}