void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };

  const broAndSister = {
    'brother': Person(),
    'sister': Person(),
  };

  print(momAndDad);
  print(broAndSister);
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();

  @override
  void breathe() {
    print('Person is breathing...');
  }
}
