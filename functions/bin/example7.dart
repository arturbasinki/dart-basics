void main(List<String> args) {
  var result = doSomething(2, 2);
  print(result());
  print(doSomething(2, 2)()); // calling function of function
}

int Function() doSomething(
  int a,
  int b,
) =>
    () => a + b;
