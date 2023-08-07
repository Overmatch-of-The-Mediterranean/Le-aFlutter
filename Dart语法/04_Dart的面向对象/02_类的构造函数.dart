void main(List<String> args) {
  // 1.这是个构造函数，不是类的方法，前有只有new，只不过可以省略
  var p1 = Person.withNameAgeHeight('why', 18, 1.88);

  var p2 = Person.fromMap({"name": "coder", "age": 20, "height": 1.88});

  print(p2.name);
  print(p2.toString());

  // 2. 知识点：Object和dynamic的区别
  // Object类型定义的变量调用其他类型的方法，编译会报错
  // dynamic类型定义的变量调用其他类型方法时，编译不会报错，但运行时会存在安全隐患

  // Object obj = '123';
  // obj.subString();

  // dynamic obj = '123';
  // print(obj.substring(0, 2));
}

class Person {
  String name = 'hhh';
  int age = 0;
  double height = 1.85;

  Person(this.name, this.age);

  // 命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);

  Person.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.age = map['age'];
    this.height = map['height'];
  }

  @override
  String toString() {
    return "$name $age $height";
  }
}
