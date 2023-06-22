void main(List<String> args) {
  Human().runn();
  // but this way doesn't work:
  // final foo = Has2Feet();
  // foo.run();
}

class Has2Feet {
  const Has2Feet();
}

mixin CanRun on Has2Feet {
  void runn() => print('$runtimeType is running');
}

class Human extends Has2Feet with CanRun {
  const Human();
}
