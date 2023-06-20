void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.description);
}

class Person {
  late String description = hevyCalculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }
  String hevyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" is called');
    return "Foo Bar";
  }
}
