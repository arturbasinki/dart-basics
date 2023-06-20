void main(List<String> args) {
  sayHelloTo(name: null);
  sayHelloTo(name: 'Arturos');
  sayHelloTo();
}

void sayHelloTo({String? name = 'John'}) {
  print('Hello $name!');
}
