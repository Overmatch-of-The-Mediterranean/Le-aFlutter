void main(List<String> args) {
  final p1 = Person();
  // 直接访问
  p1.name = 'why';
  print(p1.name);

  // 通过setter和getter分别设置值和获取值
  p1.setName = 'coder';

  print(p1.getName);
}

class Person {
  String name = 'hhh';

  set setName(String name) => this.name = name;

  String get getName => name;
}
