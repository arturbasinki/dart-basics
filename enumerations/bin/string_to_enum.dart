void main(List<String> args) {
  /** json
   * {
   *  "name" : "Foo",
   *  "type" : "cat"
   * }
   */
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'rabbit'));
  describe(animalType(fromStr: 'fish'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('This is rabbit');
      break;
    case AnimalType.cat:
      print('This is cat');
      break;
    case AnimalType.dog:
      print('This is dog');
      break;
    default:
      print('Not known animal');
  }
}

AnimalType? animalType({required String fromStr}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  } catch (e) {
    return null;
  }
}

enum AnimalType {
  rabbit,
  cat,
  dog,
}
