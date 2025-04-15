/*
SumAll: Write a function to calculate the sum of the keys of child elements in any array
For example:
Arr = [{a: 2, b: 10}, {a: 12, c: 11}, {a: 8, b: 14, d: 20}, {a: ‘8’}]
Result: {a: 30, b: 24, c: 11, d: 20}
The input is an array of objects and the elements in the object are not fixed.
JS suggestions: reducer(), Object.keys()
*/
Map<String, int> sumAll(List<Map<String, dynamic>> arr) {
  Map<String, int> result = {};
  for (var obj in arr) {
    obj.forEach((key, value) {
      if (result.containsKey(key)) {
        result[key] = result[key]! + (value is int ? value : 0);
      } else {
        result[key] = value is int ? value : 0;
      }
    });
  }
  return result;
}
void main() {
  List<Map<String, dynamic>> arr = [
    {'a': 2, 'b': 10},
    {'a': 12, 'c': 11},
    {'a': 8, 'b': 14, 'd': 20},
    {'a': 8}
  ];
  Map<String, int> result = sumAll(arr);
  print(result);
}