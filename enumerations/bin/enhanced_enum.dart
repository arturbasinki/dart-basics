void main(List<String> args) {
  final person = Person(
    name: 'Foo',
    car: Car.teslaModelX,
  );

  switch (person.car) {
    case Car.teslaModelX:
      print('${person.name} has a ${person.car}');
      break;
    case Car.teslaModelY:
      print('${person.name} has a ${person.car}');
      break;
  }
}

class Person {
  final String name;
  final Car car;

  const Person({
    required this.name,
    required this.car,
  });
}

// enhanced enum in dart xd
enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'ModelX',
    year: 2023,
  ),
  teslaModelY(
    manufacturer: 'Tesla',
    model: 'ModelY',
    year: 2023,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car(
      {required this.manufacturer, required this.model, required this.year});

  @override
  String toString() => 'Car: $manufacturer $model $year';
}
