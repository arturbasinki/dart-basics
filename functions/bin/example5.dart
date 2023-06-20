void main(List<String> args) {
  print(add(2, 2));
  print(add());
}

int add([
  int a = 0,
  int b = 0,
]) {
  return a + b;
}
