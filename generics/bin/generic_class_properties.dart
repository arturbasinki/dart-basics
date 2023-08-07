void main(List<String> args) {
  print(Person(age: 10).ageRounded);
  print(Person(age: 10.5).ageRounded);
}

class Person<T extends num> {
  const Person({required this.age});

  final T age;

  int get ageRounded => age.round();
}
