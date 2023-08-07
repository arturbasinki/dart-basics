void main(List<String> args) {
  sort(ascending: false);
  sort(ascending: true);
}

const ages = [100, 20, 30, 40];
const names = ['Foo', 'Bar', 'Baz'];
const dist = [1.2, 3.2, 1.1, 4.5];

int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int isGreaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool ascending}) {
  final comparator = ascending ? isLessThan : isGreaterThan;
  print([...ages]..sort(comparator));
  print([...names]..sort(comparator));
  print([...dist]..sort(comparator));
}
