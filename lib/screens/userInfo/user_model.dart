class User {
  final String name;
  final String surname;

  User({required this.name, required this.surname});

  String get shortName {
    return (name[0] + surname[0]);
  }

  String get fullName {
    return (name + surname);
  }
}
