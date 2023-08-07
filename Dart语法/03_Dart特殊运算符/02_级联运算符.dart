void main(List<String> args) {
  var p1 = Person()
    ..name = 'why'
    ..eat()
    ..say();

  print(p1.name);
}

class Person {
  String name = 'coder';

  eat() {
    print('eating');
  }

  say() {
    print('saying');
  }
}
