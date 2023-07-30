void main(List<String> args) {
  final p1 = Person.withName('coder');
  final p2 = Person.withName('coder');

  final p3 = Person.withColor('red');
  final p4 = Person.withColor('red');

  print(identical(p1, p2));
  print(identical(p3, p4));
}

// 普通构造函数默认返回对象，不可以手动返回
// 工厂构造函数可以手动返回

class Person {
  String name;
  String color;

  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _colorCache = {};

  factory Person.withName(String name) {
    final nameCached = _nameCache[name];
    if (nameCached != null) {
      return nameCached;
    } else {
      final p = Person(name, 'default');
      _nameCache[name] = p;
      return p;
    }
  }

  factory Person.withColor(String color) {
    final colorCached = _colorCache[color];
    if (colorCached != null) {
      return colorCached;
    } else {
      final p = Person('default', color);
      _colorCache[color] = p;
      return p;
    }
  }

  Person(this.name, this.color);
}
