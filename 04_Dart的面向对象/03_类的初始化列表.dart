void main(List<String> args) {
  var p1 = Person(20, height: 1.88);
}

class Person {
  final int age;
  final double height = 1.85;

  Person(this.age, {double height}) : this.height = height {}
}
