/*
Write a program that takes a list of strings as input and 
returns the length of the longest common substring of the strings
*/
import 'dart:io';
int longestCommonSubstring(List<String> arr){
  if (arr.isEmpty) return 0;
  String first = arr[0];
  int maxLength = 0;
  for (int i = 0; i < first.length; i++) {
    for (int j = i + 1; j <= first.length; j++) {
      String substring = first.substring(i, j);
      bool foundInAll = true;
      for (int k = 1; k < arr.length; k++) {
        if (!arr[k].contains(substring)) {
          foundInAll = false;
          break;
        }
      }
      if (foundInAll) {
        maxLength = maxLength > substring.length ? maxLength : substring.length;
      }
    }
  }
  return maxLength;
}
void main(){
  stdout.write('Enter a list of strings: ');
  List<String> arr = stdin.readLineSync()!.split(' ');
  int res = longestCommonSubstring(arr);
  print('The length of the longest common substring is: $res');
}