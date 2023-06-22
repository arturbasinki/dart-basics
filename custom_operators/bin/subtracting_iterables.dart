void main(List<String> args) {
  var list1 = [1, 2, 3, 4];
  var list2 = [2, 3];
  print(list1 - list2);
  print(['foo', 'bar', 'baz'] - ['bar']);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      where((element) => !other.contains(element));
}
