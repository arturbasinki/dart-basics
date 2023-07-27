const json = {
  'name': 'Foo Bar',
  'age': 42,
};
void main(List<String> args) {
  final String? ageAsString = json.find(
    'age',
    (int age) => age.toString(),
  );
  print(ageAsString);

  final String helloName = json.find(
    'name',
    (String name) => 'Hello, $name',
  )!;
  print(helloName);
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
