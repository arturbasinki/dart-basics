void main(List<String> args) {
  final dad = FamilyMember(name: 'Dad');
  final mom = FamilyMember(name: 'Mom');
  final family = dad + mom;
  print(family);
  family.members.forEach(print);
}

class FamilyMember {
  const FamilyMember({required this.name});

  final String name;

  @override
  String toString() => 'Family mmeber (name = $name)';
}

class Family {
  const Family({required this.members});

  final List<FamilyMember> members;

  @override
  String toString() => 'Family (members = $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [this, other]);
}
