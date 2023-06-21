void main(List<String> args) {
  final numbers = Iterable.generate(100);
  final evenNumbers = numbers.where((number) => number.isEven);
  final oddNumbers = numbers.where((number) => number.isOdd);
  print(numbers);
  print(evenNumbers);
  print(oddNumbers);

  final names = [
    'Art Bass',
    'Joe Doe',
    'Jane Kirkohorn',
  ];

  final namesAndLenght = {
    for (var name in names) name: name.length,
  };
  print(namesAndLenght);
}
