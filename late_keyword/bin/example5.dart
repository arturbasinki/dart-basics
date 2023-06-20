void main(List<String> args) {
  final person = Person();
  person.description = 'description1';
  print(person.description);
  person.description = 'description2';
  print(person.description);

  final dog = Dog();
  dog.description = "WOOF!";
  print(dog.description);
  try {
    dog.description = "bark";
    print(dog.description);
  } catch (e) {
    print(e);
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
