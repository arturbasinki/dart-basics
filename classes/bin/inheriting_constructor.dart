void main(List<String> args) {
  final mom = Mom();
  print(mom.role);
}

enum Role { mom, dad, son, daughter, grandma, grandpa }

class Person {
  final Role role;

  const Person({
    required this.role,
  });
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}
