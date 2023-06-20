void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Bender', 'Qux'];

  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  print('~~~~~~~~~~~~');

  for (final name in names.reversed) {
    if (name.startsWith('B')) {
      continue;
    }
    print(name.toUpperCase());
  }

  print('~~~~~~~~~~~~');

  for (final name in names) {
    if (name == 'Baz') {
      break;
    }
    print(name);
  }

  print('~~~~~~~~~~~~');

  for (var value in Iterable.generate(10)) {
    print(value);
  }
}
