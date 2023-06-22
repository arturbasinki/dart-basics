void main(List<String> args) {
  const names = ['foo', 'bar', 'baz'];
  print(names);
  print(names * 2);
  var result = names * 4;
  print(result);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}
