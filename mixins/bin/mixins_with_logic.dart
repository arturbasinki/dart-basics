void main(List<String> args) {
  final cat = Cat(age: 13);
  print(cat.age);
  cat.incrementAge();
  print(cat.age);
}

mixin HasAge {
  abstract int age;

  void incrementAge() => age++;
}

class Cat with HasAge {
  Cat({required this.age});

  @override
  int age = 0;
}
