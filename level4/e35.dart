/*
Write a program that takes a list of strings as input and returns 
the two strings with the largest overlap of substrings, 
where the substrings must be at least k characters long 
(where k is a parameter to the function).
*/
import 'dart:io';
int longestOverlap(String str1, String str2, int k) {
  int maxLength = 0;
  for (int i = 0; i <= str1.length - k; i++) {
    for (int j = 0; j <= str2.length - k; j++) {
      if (str1.substring(i, i + k) == str2.substring(j, j + k)) {
        int length = k;
        while (i + length < str1.length && j + length < str2.length &&
            str1[i + length] == str2[j + length]) {
          length++;
        }
        maxLength = maxLength > length ? maxLength : length;
      }
    }
  }
  return maxLength;
}
List<String> findLargestOverlap(List<String> arr, int k) {
  String str1 = '';
  String str2 = '';
  int maxOverlap = 0;
  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      int overlap = longestOverlap(arr[i], arr[j], k);
      if (overlap > maxOverlap) {
        maxOverlap = overlap;
        str1 = arr[i];
        str2 = arr[j];
      }
    }
  }
  return [str1, str2];
}
void main() {
  stdout.write('Enter a list of strings: ');
  String input = stdin.readLineSync()!;
  List<String> arr = input.split(' ');
  stdout.write('k = ');
  int k = int.parse(stdin.readLineSync()!);
  List<String> result = findLargestOverlap(arr, k);
  print('Result: $result');
}