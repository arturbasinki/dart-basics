void main(List<String> args) {
  const tuple = Tuple(1, 2.2);
  print(tuple);
  final swapped = tuple.swap();
  print(swapped);
  print(tuple.sum);
}

class Tuple<L, R> {
  const Tuple(this.left, this.right);

  final L left;
  final R right;

  @override
  String toString() => 'Tuple, left = $left, right = $right';
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
