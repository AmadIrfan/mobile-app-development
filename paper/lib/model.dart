class Model {
  String name;
  String email;
  Model({
    required this.name,
    required this.email,
  });
  Model.abc({
    required this.name,
    required this.email,
  });

  String name1(String n, [int v = 0]) {
    print(v);
    return name;
  }
}
