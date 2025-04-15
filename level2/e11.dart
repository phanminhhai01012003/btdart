// Write a program that takes a list of numbers and return the second largest number in the list.
import 'dart:io';

int findSecondLargest(List<int> numbers){
  if (numbers.length < 2) {
    throw Exception('List must contain at least two numbers');
  }
  int largest = numbers[0];
  int secondLargest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
    } else if (numbers[i] > secondLargest && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }
  return secondLargest;
}
void main() {
  stdout.write('Enter a list of numbers: ');
  String input = stdin.readLineSync()!;
  List<String> stringNumbers = input.split(' ');
  List<int> numbers = stringNumbers.map((s) => int.parse(s)).toList();
  try {
    int secondLargest = findSecondLargest(numbers);
    print('The second largest number is: $secondLargest');
  } catch (e) {
    print(e.toString());
  }
}