void main(List<String> arguments) {
  final double doubleValue = intOrDouble();
  print(doubleValue);
  final int intValue = intOrDouble();
  print(intValue);
}

T intOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      throw Exception('Not supported');
  }
}
