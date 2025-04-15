/*
uniq ArrayObject: Given an input array, write a function to remove duplicate elements in the array.
Example: [{ 'x': 1, 'y': 2 }, { 'x': 2, 'y': 1 }, { 'y': 2, 'x': 1 }] 
result: [{ ‘x': 1, 'y': 2 }, { 'x': 2, 'y': 1 }]
*/
List<Map<String, int>> uniqArrayObject(List<Map<String, int>> arr) {
  List<Map<String, int>> result = [];
  for (var obj in arr) {
    if (!result.any((e) => _areMapsEqual(e, obj))) {
      result.add(obj);
    }
  }
  return result;
}
bool _areMapsEqual(Map<String, int> m1, Map<String, int> m2){
  if(m1.length != m2.length) return false;
  for (var key in m1.keys) {
    if (!m2.containsKey(key) || m1[key] != m2[key]) {
      return false;
    }
  }
  return true;
}
void main(){
  List<Map<String, int>> arr = [
    {'x': 1, 'y': 2},
    {'x': 2, 'y': 1},
    {'y': 2, 'x': 1}
  ];
  print(uniqArrayObject(arr));
}