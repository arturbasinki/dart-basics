void main(List<String> args) {
  final mom = Person(name: 'Jane');
  final dad = Person(name: 'John');
  final daughter = Person(name: 'Jill');
  final son = Person(name: 'Peter');

  final whiskers = Pet(name: 'Kitty');
  final family = mom + dad;
  print(family);
  print(family + son + daughter);

  print(family & whiskers);
}

class Person {
  Person({required this.name});

  final String name;

  @override
  String toString() => 'Person (name = $name)';
}

class Pet {
  Pet({required this.name});

  final String name;

  @override
  String toString() => 'Pet (name = $name)';
}

class Family {
  Family({required this.members, required this.pets});

  final List<Person> members;
  final List<Pet> pets;

  @override
  String toString() => 'Family (members = $members, pets = $pets)';
}

extension PersonAdd on Person {
  Family operator +(Person other) => Family(members: [this, other], pets: []);
  Family operator &(Pet other) => Family(members: [this], pets: [other]);
}

extension FamillyAdd on Family {
  Family operator +(Person other) =>
      Family(members: [...members, other], pets: pets);
  Family operator &(Pet other) =>
      Family(members: members, pets: [...pets, other]);
}
