void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 10,
  };
  print(info);
  print(info['name']);
  print(info['age']);

  print('------------------');

  print(info.keys);
  print(info.values);

  print('------------------');

  info.putIfAbsent('height', () => 189);
  print(info);
  info['height'] = 190;
  print(info);

  print('------------------');

  for (var entry in info.entries) {
    print('${entry.key}: ${entry.value}');
    // print(entry.value);
  }

  print('------------------');

  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  } else {
    print('Height is not found');
  }
}
