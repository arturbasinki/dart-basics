void main(List<String> args) {
  const car = Car();
  print(car.kind);
  car.accelerate();
  car.deaccelerate();
}

enum VehicleKind {
  car,
  truck,
  motorcycle,
}

abstract class Vehicle {
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void deaccelerate() => print('$kind is deaccelerating');
}

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class Mororcycle implements Vehicle {
  @override
  void accelerate() => print('Motor is accelerating');

  @override
  void deaccelerate() => print('Motorcycle is deaccelerating');

  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}
