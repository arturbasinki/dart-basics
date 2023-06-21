void main(List<String> args) {
  addToArrayWrongWay();
  print('----------------------------------');
  addToArrayRightWay();
}

void addToArrayWrongWay() {
  final names1 = ['foo1', 'bar1'];
  final names2 = ['foo2', 'bar2'];
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRightWay() {
  final names1 = ['foo1', 'bar1'];
  final names2 = ['foo2', 'bar2'];
  final allNamesRight = [...names1, ...names2];

  print(names1);
  print(names2);
  print(allNamesRight);
  final anotherWay = [...names1]..addAll(names2);
  print(anotherWay);
}
