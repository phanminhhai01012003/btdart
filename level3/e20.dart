/* Write a program that takes a list of numbers as input and
returns the smallest positive integer that 
cannot be represented as the sum of any subset of the list.*/
import 'dart:io';
int findSmallestPositiveInteger(List<int> numbers) {
  numbers.sort();
  int smallestPositive = 1;
  for (int number in numbers) {
    if (number > smallestPositive) {
      break;
    }
    smallestPositive += number;
  }
  return smallestPositive;
}
void main() {
  stdout.write('Enter a list of numbers: ');
  String input = stdin.readLineSync()!;
  List<String> stringNumbers = input.split(' ');
  List<int> numbers = stringNumbers.map((s) => int.parse(s)).toList();
  int smallestPositiveInteger = findSmallestPositiveInteger(numbers);
  print('The smallest positive integer that cannot be represented as the sum of any subset is: $smallestPositiveInteger');
}