void main(List<String> args) {
  final p = Rectangle();
  print(p.getArea());
  print(p.getInfo());
}

/**
 * 注意一: 子类继承抽象类,必须实现抽象类中的抽象方法
 * 注意二: 抽象类不能被实例化
 * 注意三: 有些抽象类能被实例化,是因为内部使用了工厂构造函数
 * 
 * 补充知识点: external关键字可以将方法的声明和方法的实现分离, 在使用@pitch(补丁)处来实现方法
 */
abstract class Shape {
  int getArea();

  String getInfo() {
    return '123';
  }
}

class Rectangle extends Shape {
  @override
  int getArea() {
    return 666;
  }
}
