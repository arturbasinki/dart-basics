void main(List<String> args) {
  print(sub(2, 2));
  print(sub(8, 2));
  print(sub(2, 8));
  var result = performOperation(18, 8, (a, b) => a - b);
  print(result);
  result = performOperation(8, 18, sub);
  print(result);
}

int sub(int a, int b) => a > b ? a - b : b - a;
int add(int a, int b) => a + b;
int performOperation(
  int a,
  int b,
  int Function(int, int) operation,
) =>
    operation(a, b);
