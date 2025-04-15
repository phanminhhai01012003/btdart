// write a program that takes a list of strings as input and return the longest word in the list
import 'dart:io';

String findLongestWord(List<String> words) {
  String longestWord = '';
  for (String word in words) {
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  return longestWord;
}
void main() {
  stdout.write('Enter a list of words: ');
  String input = stdin.readLineSync() ?? '';
  if (input.isEmpty) {
    print('No words were entered.');
    return;
  }else{
    List<String> words = input.split(' ');
    String longestWord = findLongestWord(words);
    print('The longest word is: $longestWord');
  }
}