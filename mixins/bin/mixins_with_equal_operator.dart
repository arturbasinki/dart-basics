import 'package:uuid/uuid.dart';

void main(List<String> args) {
  final uuid1 = const Uuid().v4();
  print(uuid1);
  final uuid2 = const Uuid().v4();

  final person1 = Person(id: uuid1, name: 'John', age: 21);
  final person1again = Person(id: uuid1, name: 'john', age: 21);
  final person2 = Person(id: uuid2, name: 'john', age: 21);

  if (person1 == person2) {
    print('Person1 and Person2 are equal');
  } else {
    print('Person1 and Person 2 are NOT equal');
  }
  if (person1 == person1again) {
    print('Person1 and Person1again are equal');
  } else {
    print('Person1 and Person1Again are NOT equal');
  }
}

mixin HasIdentifier {
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;

  String get id;
}

class Person with HasIdentifier {
  Person({
    required this.id,
    required this.name,
    required this.age,
  });

  final int age;
  final String name;

  @override
  final String id;
}
