import 'dart:io';

void main(){
  // Write a program that takes a string as input and returns the number of words in the string.
  stdout.write('Enter a string: ');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    List<String> words = input.split(' ');
    int wordCount = words.length;
    print('The number of words in the string is: $wordCount');
  } else {
    print('No input provided.');
  }
}