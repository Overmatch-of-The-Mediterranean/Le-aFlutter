void main(List<String> args) {
  final p = Person();
  // print(p.name);

  // print(Person.name);
  // Person.eat();
}

// 使用static定义的属性和方法称为类属性和方法,通过类来调用,实例不能调用
class Person {
  static String name = 'hhh';

  static eat() {
    print('eating');
  }
}
