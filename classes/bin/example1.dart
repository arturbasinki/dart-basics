void main(List<String> args) {
  final person = Person(name: 'Foo', age: 20);
  print(person);

  print('--------------');

  final personInit = Person.init();
  print(personInit);

  print('--------------');

  final person1 = Person1();
  print(person1);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  const Person.init()
      : name = 'Bar',
        age = 20;

  @override
  String toString() => 'class: $name $age';
}

class Person1 {
  final String name;
  final int age;

  Person1({this.name = 'Joe', this.age = 20});

  @override
  String toString() => 'class: $name $age';
}
