void main(List<String> args) {
  final johnDoe = Person(firstName: 'John', lastName: 'Doe');
  print(johnDoe.fullName);
  print(getFullName(johnDoe));
}

mixin HasFirstName {
  String get firstName;
}
mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  Person({required this.firstName, required this.lastName});

  @override
  final String firstName;

  @override
  final String lastName;
}

String getFullName(HasFullName obj) => obj.fullName;
