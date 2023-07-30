void main(List<String> args) {
  // 1明确的声明
  // String name = 'hhh';
  // print(name);

  // 2.类型推导(var/final/const)，虽没有明确定义类型，其实是有类型的，可以自动推导出来
  // var定义变量，final和const定义常量
  var age = 18;
  // age = '111'; // 错误，类型不符
  age = 20;
  print(age);

  // final
  // final height = 1.77;
  // height = 1.88; 不可行

  // const
  // const height = 1.77;
  // height = 1.88; 同上

  // 2.1 final和const的区别
  // const初始化必须赋值，常量值(编译期间需要有一个确定的值)
  // final初始化必须赋值，值可以通过计算/函数计算出来(运行期间需要确定一个值)

  // const date = DateTime.now(); 不可行
  final date = DateTime.now();
  print(date);

  // 实现多次new类，返回同一个对象

  const p1 = Person('lll');
  const p2 = Person('lll');
  print(identical(p1, p2));
}

class Person {
  final String name;
  const Person(this.name);
}
