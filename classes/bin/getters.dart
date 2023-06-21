void main(List<String> args) {
  final foo = Person(firstName: 'Foo', lastName: 'Bar');
  print(foo.fullName);

  print('-----------------------');
  final bar = Person1(firstName: 'Baz', lastName: 'Dupa');
  print(bar.fullName);
  print('-----------------------');
  print('-----------------------');
}

class Person {
  final String firstName;
  final String lastName;
  final String fullName;

  const Person({
    required this.firstName,
    required this.lastName,
  }) : fullName =
            '$firstName $lastName'; // this solution is better for performance than getters!!!!
}

class Person1 {
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';

  const Person1({
    required this.firstName,
    required this.lastName,
  });
}
