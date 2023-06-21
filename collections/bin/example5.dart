void main(List<String> args) {
  final iterable = Iterable.generate(
    20,
    (index) => getName(index),
  );

  for (var name in iterable.take(2)) {
    print(name);
  }

  print('------------');

  const names = ['John', 'Jane', 'Jack', 'Jill'];
  final upperCaseNames = names.map((name) {
    print('Map got called');
    return name.toUpperCase();
  });
  print(upperCaseNames.take(1));

  print('------------');
}

String getName(int index) {
  print('Get name got called');
  return 'John #$index';
}
