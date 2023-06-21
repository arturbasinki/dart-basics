void main(List<String> args) {
  final v = Vehicle(4);
  print(v);
  print('-----------------');
  final car = Car();
  print(car);
  print('-----------------');
  final bike = Bike();
  print(bike);
  print('-----------------');
}

class Vehicle {
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString() => '$runtimeType with $wheelCount wheels';
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Bike extends Vehicle {
  const Bike() : super(2);
}
