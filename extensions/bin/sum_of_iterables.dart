void main(List<String> args) {
  final sumOfIntegers = [1, 2, 3].sum;
  print(sumOfIntegers);
  final sumOfDoubles = [1.1, 2.2, 3.3].sum;
  print(sumOfDoubles);
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
