// Write a program that takes two lists of integers as input and returns the median of the combined list.
import 'dart:io';
double findMedian(List<int> numbers) {
  numbers.sort();
  int n = numbers.length;
  if (n % 2 == 0) {
    return (numbers[n ~/ 2 - 1] + numbers[n ~/ 2]) / 2.0;
  } else {
    return numbers[n ~/ 2].toDouble();
  }
}
void main() {
  stdout.write('Enter the first list of integers: ');
  String input1 = stdin.readLineSync()!;
  List<String> stringNumbers1 = input1.split(' ');
  List<int> numbers1 = stringNumbers1.map((s) => int.parse(s)).toList();
  stdout.write('Enter the second list of integers: ');
  String input2 = stdin.readLineSync()!;
  List<String> stringNumbers2 = input2.split(' ');
  List<int> numbers2 = stringNumbers2.map((s) => int.parse(s)).toList();
  List<int> combinedNumbers = [...numbers1, ...numbers2];
  double median = findMedian(combinedNumbers);
  print('The median of the combined list is: $median');
}