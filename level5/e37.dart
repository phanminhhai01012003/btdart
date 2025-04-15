/*
chunk: 
Given an input array, write a function to divide the array evenly into the specified number of parts.
*/
import 'dart:io';

List<List<String>> chunk(List<String> arr, int size) {
  List<List<String>> chunks = [];
  for (int i = 0; i < arr.length; i += size) {
    chunks.add(arr.sublist(i, i + size > arr.length ? arr.length : i + size));
  }
  return chunks;
}
void main(){
  stdout.write('arr = ');
  List<String> arr = stdin.readLineSync()!.split(' ');
  stdout.write('size = ');
  int size = int.parse(stdin.readLineSync()!);
  List<List<String>> chunks = chunk(arr, size);
  print(chunks);
}