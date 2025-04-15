/*
Write a program that takes a list of strings as input and 
returns the list sorted by the number of distinct characters in each string, 
with the shortest strings appearing first
*/
/*
For example: ['apple', 'banana', 'orange', 'kiwi', 'strawberry']
output: ['kiwi', 'apple', 'orange', 'banana', 'strawberry'] 
*/
import 'dart:io';
List<String> sortByDistinctChars(List<String> arr) {
  arr.sort((a, b) {
    int distinctA = a.split('').toSet().length;
    int distinctB = b.split('').toSet().length;
    if (distinctA == distinctB) {
      return a.length.compareTo(b.length);
    }
    return distinctA.compareTo(distinctB);
  });
  return arr;
}
void main() {
  stdout.write('Enter a list of strings: ');
  List<String> arr = stdin.readLineSync()!.split(' ').map((s) => s.trim()).toList();
  List<String> sortedArr = sortByDistinctChars(arr);
  print('The sorted list is: $sortedArr');
}