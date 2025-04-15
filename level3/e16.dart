/* Write a program that takes a list of numbers as input and 
returns the second smallest number in the list*/
import 'dart:io';

int findSecondSmallest(List<int> numbers){
  if (numbers.length < 2) {
    throw Exception('List must contain at least two numbers');
  }
  int smallest = numbers[0];
  int secondSmallest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < smallest) {
      secondSmallest = smallest;
      smallest = numbers[i];
    } else if (numbers[i] < secondSmallest && numbers[i] != smallest) {
      secondSmallest = numbers[i];
    }
  }
  return secondSmallest;
}
void main(){
  stdout.write('Enter a list of numbers: ');
  String input = stdin.readLineSync()!;
  List<String> stringNumbers = input.split(' ');
  List<int> numbers = stringNumbers.map((s) => int.parse(s)).toList();
  try {
    int secondSmallest = findSecondSmallest(numbers);
    print('The second smallest number is: $secondSmallest');
  } catch (e) {
    print(e.toString());
  }
}