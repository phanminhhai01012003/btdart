/*
MapKey: Given an array of keys, into an array of objects, 
write a function to return an array of objects in the order of the array of keys. 
(Requires the use of the map function)
*/
List<Map<String, dynamic>> mapKey(List<String> keys, List<Map<String, dynamic>> arr) {
  return arr.map((obj) {
    Map<String, dynamic> newObj = {};
    for (var key in keys) {
      if (obj.containsKey(key)) {
        newObj[key] = obj[key];
      }
    }
    return newObj;
  }).toList();
}
void main(){
  List<String> keys = ['b', 'a', 'c'];
  List<Map<String, dynamic>> arr = [
    {'a': 1, 'b': 1, 'c': 2, 'd': 4, 'e': 5}, 
    {'a': 2, 'b': 1, 'c': 5, 'd': 4, 'e': 5}, 
    {'d': 4, 'e': 5, 'a': 22, 'b':11, 'c': 51}
  ];
  List<Map<String, dynamic>> result = mapKey(keys, arr);
  print(result);
}