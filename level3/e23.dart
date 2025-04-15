/* Write a program that takes a list of numbers as input and 
returns the number of distinct pairs of numbers in the list that sum up to a target value.*/
import 'dart:io';
int countPairs(List<int> numbers, int target) {
  Set<int> seen = {};
  Set<String> pairs = {};
  for (int number in numbers) {
    int complement = target - number;
    if (seen.contains(complement)) {
      String pair = '${number < complement ? number : complement}, ${number < complement ? complement : number}';
      pairs.add(pair);
    }
    seen.add(number);
  }
  return pairs.length;
}
void main() {
  stdout.write('Enter a list of numbers: ');
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map((e) => int.parse(e.trim())).toList();
  stdout.write('Enter the target sum: ');
  int target = int.parse(stdin.readLineSync()!);
  int count = countPairs(numbers, target);
  print('The number of distinct pairs that sum up to $target is: $count');
}