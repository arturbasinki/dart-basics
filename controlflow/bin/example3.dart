import 'dart:io';

void main(List<String> args) {
  describe(2);
  describe(2.0);
  describe('two');

  do {
    stdout.write('Enter your age or type "exit": ');
    final input = stdin.readLineSync();
    if (input == 'exit') {
      break;
    }
    print(input);
  } while (true);
}

void describe<T>(T arg) {
  switch (T) {
    case int:
      print('This is integer');
      break;
    case double:
      print('This is double');
      break;
    default:
      print('Non a number');
  }
}
