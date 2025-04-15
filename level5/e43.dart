/*
Switch Order: Write a function to change the order of objects.
For example:
arr = [{id: 10, order: 0}, {id: 12, order: 1}, {id: 9, order: 2}, {id: 11, order: 3}]
switchOrder(9, 1)(move object with id 9 to position order = 1, change value of order)
result: [{id: 10, order: 0}, {id: 9, order: 1}, {id: 12, order: 2}, {id: 11, order: 3}]
*/
List<Map<String, dynamic>> switchOrder(int id, int newOrder, List<Map<String, dynamic>> arr) {
  Map<String, dynamic>? objToMove = arr.firstWhere((obj) => obj['id'] == id, orElse: () => {});
  arr.remove(objToMove);
  objToMove['order'] = newOrder;
  for (var obj in arr) {
    if (obj['order'] >= newOrder) {
      obj['order']++;
    }
  }
  arr.insert(newOrder, objToMove);
  for(int i = 0; i < arr.length; i++) {
    arr[i]['order'] = i;
  }
  return arr;
}
void main() {
  List<Map<String, dynamic>> arr = [
    {'id': 10, 'order': 0},
    {'id': 12, 'order': 1},
    {'id': 9, 'order': 2},
    {'id': 11, 'order': 3}
  ];
  List<Map<String, dynamic>> result = switchOrder(9, 1, arr);
  print(result);
}