void main(List<String> args) {
  final myCar = Car();
  myCar.drive(speed: 50);
}

class Car {
  int speed = 0;

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Acclerating to $speed km/h');
  }
}
