void main(List<String> args) {
  sayHello('yahu');
  sayHello1('yahu', 18);
  sayHello2('yahu', height: 1.85, age: 12);
}

// 必选参数
void sayHello(String name) {
  print(name);
}

// Dart中没有重载
// 可选参数：位置可选参数 && 命名可选参数
// 位置可选参数
void sayHello1(String name, [int age = 10, double height = 1.77]) {}

// 命名可选参数
void sayHello2(String name, {int age = 11, double height = 1.88}) {}
