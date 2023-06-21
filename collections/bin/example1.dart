void main(List<String> args) {
  const names = [
    'Foo',
    'Bar',
    'Baz',
    'Qux',
  ];

  for (var name in names) {
    print(name);
  }

  print('-------------------------');

  for (var name in names.reversed) {
    print(name);
  }

  print('-------------------------');

  if (names.contains('Bar')) {
    print('List contains Bar');
  }

  print('-------------------------');

  names.where((name) => name.startsWith('B')).forEach(print);

  print('-------------------------');

  try {
    print(names[4]);
  } catch (e) {
    print(e);
  }

  print('-------------------------');

  names.sublist(1).forEach(print);

  print('-------------------------');

  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);

  print('-------------------------');

  final upperNames = names.map((name) => name.toUpperCase());
  upperNames.forEach(print);

  print('-------------------------');

  final numbers = [1, 2, 3];
  final sum =
      numbers.fold(0, (previousValue, element) => previousValue + element);
  print(sum);

  print('-------------------------');

  final sumOfNames =
      names.fold(0, (previousValue, element) => previousValue + element.length);
  print(sumOfNames);

  print('-------------------------');
}
