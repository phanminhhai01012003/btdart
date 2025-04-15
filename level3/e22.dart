/* Write a program that takes a string as input and 
returns the length of the longest palindrome 
that can be formed by rearranging the characters in the string*/
/*For example: A man a plan a canal Panama
output: 21*/
import 'dart:io';
int longestPalindromeLength(String s) {
  Map<String, int> charCount = {};
  for (int i = 0; i < s.length; i++) {
    String char = s[i].toLowerCase();
    if (char != ' ') {
      charCount[char] = (charCount[char] ?? 0) + 1;
    }
  }
  int length = 0;
  bool hasOddCount = false;
  charCount.forEach((key, value) {
    if (value % 2 == 0) {
      length += value;
    } else {
      length += value - 1;
      hasOddCount = true;
    }
  });
  return hasOddCount ? length + 1 : length;
}
void main() {
  stdout.write('Enter a string: ');
  String s = stdin.readLineSync()!;
  int len = longestPalindromeLength(s);
  print('The length of the longest palindrome that can be formed is: $len');
}