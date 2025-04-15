// Write a program that takes a list of strings as input and returns the number of strings that contain the letter 'a'.
import 'dart:io';

void main(){
  stdout.write('Enter a list of strings: ');
  String input = stdin.readLineSync()!;
  List<String> strings = input.split(' ');
  int count = 0;
  for (String str in strings) {
    if (str.contains('a')) {
      count++;
    }
  }
  print('Number of strings that contain the letter "a": $count');
}