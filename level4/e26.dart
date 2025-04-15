/*Write a program that takes a list of integers as input and 
returns the minimum number of moves required to sort the list in ascending order using bubble sort*/
import 'dart:io';
int bubbleSortMoves(List<int> arr) {
  int moves = 0;
  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = 0; j < arr.length - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        moves++;
      }
    }
  }
  return moves;
}
void main() {
  stdout.write('Enter a list of integers: ');
  List<int> arr = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int moves = bubbleSortMoves(arr);
  print('The minimum number of moves required to sort the list is: $moves');
}