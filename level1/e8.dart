// Write a program that takes a list of numbers as input and returns the median of the numbers
import 'dart:io';

void main(){
  stdout.write('Enter a list of numbers: ');
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    List<int> numbers = input.split(' ').map(int.parse).toList();
    numbers.sort();
    double median;
    int middle = numbers.length ~/ 2;
    if (numbers.length % 2 == 0) {
      median = (numbers[middle - 1] + numbers[middle]) / 2;
    } else {
      median = numbers[middle].toDouble();
    }
    print('The median is: $median');
  } else {
    print('No input provided.');
  }
}