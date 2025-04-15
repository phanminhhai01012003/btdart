/*
reverses: Given an array as input, 
write a function to reverse the order of elements in the array, 
without using the built-in Reverses function of javascript 
(use forEach or reduce)
*/
import 'dart:io';

List<int> reverses(List<int> arr) {
  List<int> reversed = [];
  arr.forEach((element) {
    reversed.insert(0, element);
  });
  return reversed;
}
void main(){
  List<int> arr = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> reversed = reverses(arr);
  print(reversed);
}