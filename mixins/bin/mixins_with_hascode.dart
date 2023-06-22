void main(List<String> args) {
  final cats = <Cat>{
    Cat(age: 12, name: 'Kitty 1'),
    Cat(age: 13, name: 'Kitty 2'),
    Cat(age: 12, name: 'Kitty 1'),
  };
  cats.forEach(print);
}

enum PetType {
  cat,
  dog,
}

mixin Pet {
  @override
  bool operator ==(Object other) => other.hashCode == hashCode;

  @override
  int get hashCode => Object.hash(
        name,
        age,
        type,
      );

  @override
  String toString() => 'Pet ($type), name = $name, age = $age';

  String get name;

  int get age;

  PetType get type;
}

class Cat with Pet {
  Cat({
    required this.age,
    required this.name,
  }) : type = PetType.cat;

  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;
}
