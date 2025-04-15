/*
Write a program that takes a list of integers as input and 
returns the smallest positive integer that cannot be represented 
as the sum of any subset of the list, 
with the additional constraint that no subset can contain any consecutive integers
*/
import 'dart:io';

int findSmallestPositiveInteger(List<int> arr) {
  arr.sort();
  int smallestPositive = 1;
  for (int num in arr) {
    if (num >= smallestPositive) {
      if (num > smallestPositive + 1) {
        break;
      }
      smallestPositive += num;
    }
  }
  return smallestPositive;
}
void main() {
  stdout.write('Enter a list of integers: ');
  String input = stdin.readLineSync()!;
  List<int> arr = input.split(' ').map(int.parse).toList();
  int result = findSmallestPositiveInteger(arr);
  print(result);
}