void main(List<String> args) {
  print('foo bar' - 'bar');
  print('foo bar' - 'foo');
  print('bar' - 'bar');
  print('foo bar' - 'baz');
}

extension Remove on String {
  String operator -(String other) => replaceAll(other, '');
}
