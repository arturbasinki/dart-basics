void main(List<String> args) {
  const name = 'Foo';
  print(name);

  final age = [1, 2, 3];
  print(age);
  age.removeAt(0);
  print(age);

  var address = 'Foo';
  print(address);

  // address = 7; invalid address iss String, so reassigning int is invalid!
  address = 'Bar';
  print(address);
}
