void main(List<String> args) {
  const record = {
    'name': 'John',
    'age': 30,
    'married': true,
  };

  for (var entry in record.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
