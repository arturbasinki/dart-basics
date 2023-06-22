void main(List<String> args) {
  final myNow = Person(age: 49);
  print(myNow + 1);
}

class Person {
  Person({required this.age});

  final int age;

  Person operator +(int age) => Person(age: this.age + age);

  @override
  String toString() => 'Person (age = $age)';
}
