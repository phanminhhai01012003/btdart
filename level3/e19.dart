// Write a program that takes a list of strings as input and returns the two strings with the largest overlap of characters.
import 'dart:io';
int overlap(String a, String b) {
  Set<String> setA = a.split('').toSet();
  Set<String> setB = b.split('').toSet();
  return setA.intersection(setB).length;
}
List<String> findLargestOverlap(List<String> strings) {
  if (strings.length < 2) {
    throw Exception('List must contain at least two strings');
  }
  String str1 = strings[0];
  String str2 = strings[1];
  int maxOverlap = overlap(str1, str2);
  for (int i = 0; i < strings.length; i++) {
    for (int j = i + 1; j < strings.length; j++) {
      int currentOverlap = overlap(strings[i], strings[j]);
      if (currentOverlap > maxOverlap) {
        maxOverlap = currentOverlap;
        str1 = strings[i];
        str2 = strings[j];
      }
    }
  }
  return [str1, str2];
}
void main(){
  stdout.write('Enter a list of strings: ');
  String input = stdin.readLineSync()!;
  List<String> strings = input.split(' ');
  try {
    List<String> largestOverlap = findLargestOverlap(strings);
    print('The two strings with the largest overlap are: $largestOverlap');
  } catch (e) {
    print(e.toString());
  }
}