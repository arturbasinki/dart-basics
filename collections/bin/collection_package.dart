import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('----------------------');
  testCanonicalizedMap();
  print('----------------------');
  testCombinedIterableView();
  print('----------------------');
  testCombinedListView();
  print('----------------------');
  testCombninedMapView();
  print('----------------------');
  testMapMerging();
  print('----------------------');
}

void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  print(boolList);
}

void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 10,
    'sex': 'male',
    'address': 'New York',
  };
  final canonMap = CanonicalizedMap.from(info, (key) => key.length);
  print(canonMap);
}

void testCombinedIterableView() {
  final one = [1, 2, 3];
  final two = [10, 20, 30];
  final three = [40, 50, 60];

  var combined = CombinedIterableView([one, two, three]);

  print(combined);
  two.add(33);
  print(combined);
}

void testCombinedListView() {
  // CombinedListView is a view of a list of lists and is unmodifiable
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];
  final names = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);
  print(names);
  try {
    names.add('Zenek');
  } catch (e) {
    print(e);
  }
  frenchNames.add('Louis');
  print(names);
}

void testCombninedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};
  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combinedMap);
}

void testMapMerging() {
  const info1 = {
    'name': 'John 1',
    'age': 30,
    'height': 1.8,
  };
  const info2 = {
    'name': 'John 2',
    'age': 31,
    'height': 1.8,
    'weight': 80,
  };
  final merge = mergeMaps(info1, info2, value: (p0, p1) => p0);
  print(merge);
}
