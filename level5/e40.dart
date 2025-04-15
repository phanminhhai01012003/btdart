/*
Group by: Given an input of a collection (array of objects), 
write a function to return a new OBJECT containing data grouped by the specified field.
*/
Map<String, List<Map<String, dynamic>>> groupBy(List<Map<String, dynamic>> arr, String field) {
  Map<String, List<Map<String, dynamic>>> grouped = {};
  for (var obj in arr) {
    String key = obj[field].toString();
    if (!grouped.containsKey(key)) {
      grouped[key] = [];
    }
    grouped[key]!.add(obj);
  }
  return grouped;
}
void main(){
  List<Map<String, dynamic>> arr = [{'a': 1, 'b': 2}, {'a': 1, 'b': 3}, {'a': 2, 'b': 2}];
  Map<String, List<Map<String, dynamic>>> grouped1 = groupBy(arr, 'a');
  print('1: $grouped1');
  Map<String, List<Map<String, dynamic>>> grouped2 = groupBy(arr, 'b');
  print('2: $grouped2');
}