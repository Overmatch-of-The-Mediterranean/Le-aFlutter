void main(List<String> args) {
  const p1 = Person('coder', 18);
  print(p1.name);
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}
