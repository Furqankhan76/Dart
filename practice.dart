void main() {
  int? age;
  String? name;

  print(name);
  print(age);

  if (name == null) {
    print('name is null');
  }

  age = 20;
  print(age);
}
