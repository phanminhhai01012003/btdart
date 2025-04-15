/*
TrimAll: Write a function to remove all leading and trailing spaces from any string, 
if there is space in the middle of the string then only keep one space.
*/
import 'dart:io';

String trimAll(String str){
  str = str.trim();
  str = str.replaceAll(RegExp(r'\s+'), ' ');
  return str;
}
void main(){
  String str = stdin.readLineSync()!;
  String trimmed = trimAll(str);
  print(trimmed);
}