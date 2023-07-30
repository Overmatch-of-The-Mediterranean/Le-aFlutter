void main(List<String> args) {
  final p = Person('tom', 20);
  print(p.age);
}

class Animal {
  int age;

  Animal(this.age);
}

class Person extends Animal {
  String name;

  Person(this.name, int age) : super(age);
}
