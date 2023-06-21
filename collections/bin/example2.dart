import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {'Foo', 'Bar', 'Baz', 'Qux'};

  names.add('Foo');
  print(names);

  print('--------------------------');

  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  final uniqueNames = {...names2};
  print(uniqueNames);

  print('--------------------------');

  // sets are hashable
  final foo1 = 'Foo';
  var foo2 = 'foo';
  print(foo1.hashCode);
  print(foo2.hashCode);

  print('--------------------------');

  // direct comparision between sets is unable
  final ages1 = {10, 20, 30};
  final ages2 = {10, 20, 30};

  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('--------------------------');

  // sets comparision is possible thanks to collection package

  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('--------------------------');

  final ages3 = {30, 20, 10};

  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('--------------------------');
}
