/*
uniq: Given an input array, write a function to remove duplicate elements in the array.
*/
List<int> uniq(List<int> arr) {
  List<int> unique = [];
  arr.forEach((element) {
    if (!unique.contains(element)) {
      unique.add(element);
    }
  });
  return unique;
}
void main(){
  List<int> arr = [1, 2, 3, 2, 4];
  List<int> unique = uniq(arr);
  print(unique);
}