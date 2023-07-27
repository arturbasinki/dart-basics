void main(List<String> args) {
  print([1, 2, 3, 2].containsDuplicates);
  print([1, 2, 3].containsDuplicates);
  print(['Foo', 'Bar', 'Foo'].containsDuplicates);
  print(['Foo', 'Bar'].containsDuplicates);
}

extension on Iterable {
  bool get containsDuplicates => toSet().length < length;
}
