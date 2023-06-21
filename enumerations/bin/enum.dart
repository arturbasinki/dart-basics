main(List<String> args) {
  final pimpek = Animal(
    name: 'Pimpek',
    type: AnimalType.monkey,
  );

  if (pimpek.type == AnimalType.cat) {
    print('Pimpek is a dog');
  } else {
    print('Pimpek is chuj wie co');
  }

  switch (pimpek.type) {
    case AnimalType.cat:
      print('Pimpek is a cat');
      break;
    case AnimalType.dog:
      print('Pimpek is a dog');
      break;
    case AnimalType.fish:
      print('Pimpek is a fish');
      break;
    case AnimalType.monkey:
      print('Pimpek is a monkey');
      break;
  }
}

enum AnimalType {
  cat,
  dog,
  fish,
  monkey,
}

class Animal {
  final String name;
  final AnimalType type;

  const Animal({required this.name, required this.type});
}
