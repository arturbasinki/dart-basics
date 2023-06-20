void main(List<String> args) {
  const names = ['John', 'Paul', 'George', 'Ringo'];
  var counter = 0;

  while (counter < names.length) {
    print(names[counter]);
    counter++;
  }

  print('----------------------');

  counter = names.length;
  while (--counter >= 0) {
    print(names[counter]);
  }

  print('----------------------');

  counter = 0;
  do {
    print(names[counter++]);
  } while (counter < names.length);
}
