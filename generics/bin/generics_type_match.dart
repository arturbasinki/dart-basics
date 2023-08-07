void main(List<String> args) {
  print(doTypesMatch('a', 'b'));
  print(doTypesMatch('a', 1));
  print(doTypesMatch(1, 1.1));
  print(doTypesMatch(1, 5));
  print('-------------------------');
  print(genericsTypesMatch('a', 'b'));
  print(genericsTypesMatch('a', 1));
  print(genericsTypesMatch(1, 1.1));
  print(genericsTypesMatch(1, 5));
}

bool doTypesMatch(Object a, Object b) => a.runtimeType == b.runtimeType;

bool genericsTypesMatch<L, R>(L a, R b) => L == R;
