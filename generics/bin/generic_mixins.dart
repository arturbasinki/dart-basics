void main(List<String> args) {
  const person = Person(height: 180);
  const dog = Dog(height: 55);
  print(person.height);
  print(dog.height);
}

mixin HasHeight<T extends num> {
  T get height;
}

typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Person with HasDoubleHeight {
  const Person({required this.height});

  @override
  final double height;
}

class Dog with HasIntHeight {
  const Dog({required this.height});

  @override
  final int height;
}
