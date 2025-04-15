/*Write a program that takes a list of integers as input and 
returns the maximum difference between any two elements in the list.*/
import 'dart:io';
int findMaxDifference(List<int> numbers) {
  if (numbers.length < 2) {
    throw Exception('List must contain at least two numbers');
  }
  int max = numbers[0];
  int min = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    } else if (numbers[i] < min) {
      min = numbers[i];
    }
  }
  return max - min;
}
void main() {
  stdout.write('Enter a list of integers: ');
  String input = stdin.readLineSync()!;
  List<String> stringNumbers = input.split(' ');
  List<int> numbers = stringNumbers.map((s) => int.parse(s)).toList();
  try {
    int maxDifference = findMaxDifference(numbers);
    print('The maximum difference is: $maxDifference');
  } catch (e) {
    print(e.toString());
  }
}