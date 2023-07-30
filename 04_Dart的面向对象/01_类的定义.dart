void main(List<String> args) {
  var p1 = Person('why', 20);
  print(p1.name);
}

// 所有class都继承Object
class Person {
  String name;
  int age;
  Person(this.name, this.age) {}
}
