/*
Write a program that takes a list of strings as input and 
returns the list sorted by the number of distinct words in each string, 
with the longest strings appearing first.
(Recommended to use forEach with Javascript)
For example: ['the quick brown fox', 'the lazy dog jumps over the fence', 'the cat in the hat']
Result: ['the lazy dog jumps over the fence', 'the quick brown fox', 'the cat in the hat']
*/
import 'dart:io';
List<String> sortByDistinctWords(List<String> arr) {
  arr.sort((a, b) {
    int distinctA = a.split(' ').toSet().length;
    int distinctB = b.split(' ').toSet().length;
    if (distinctA == distinctB) {
      return b.length.compareTo(a.length);
    }
    return distinctB.compareTo(distinctA);
  });
  return arr;
}
void main() {
  stdout.write('Enter a list of strings: ');
  List<String> arr = stdin.readLineSync()!.split(',').map((s) => s.trim()).toList();
  List<String> sortedArr = sortByDistinctWords(arr);
  print('The sorted list is: $sortedArr');
}