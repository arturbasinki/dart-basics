void main(List<String> args) {
  doSomethingWith(name: 'Foo');
}

void doSomethingWith({required String name}) {
  print('Hello, $name!');
}
