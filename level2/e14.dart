// Write a program that takes a list of numbers as input and returns the sum of the numbers that are divisible by both 3 and 5.
import 'dart:io';
bool isDivisibleByBoth3And5(int num){
  return num % 3 == 0 && num % 5 == 0;
}
void main(){
  stdout.write('Enter a list of numbers: ');
  String? input = stdin.readLineSync();
  if(input != null && input.isNotEmpty){
    List<String> numbers = input.split(' ');
    List<int> nums = numbers.map((n) => int.parse(n)).toList();
    int sum = 0;
    for(int num in nums){
      if(isDivisibleByBoth3And5(num)){
        sum += num;
      }
    }
    print('The sum of numbers divisible by 3 or 5 is: $sum');
  }else{
    print('No input provided.');
  }
}