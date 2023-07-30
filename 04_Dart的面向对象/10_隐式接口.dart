void main(List<String> args) {
  final p = SuperMan();
  p.run();
  p.player();
}

// Dart没有专门用来定义接口的关键字
// 默认都有类都是隐式接口
// Dart支持类的单继承,支持实现多个接口

class Runner {
  run() {
    print('running');
  }
}

class Player {
  player() {
    print('playing');
  }
}

class Animal {
  run() {
    print('Animal running');
  }

  player() {
    print('Animal playing');
  }
}

// 继承类的方法不需要实现,接口的方法需要实现
// 方法优先级: SuperMan > Animal > 接口
class SuperMan extends Animal implements Runner, Player {
  run() {
    print('superman running');
  }

  player() {
    print('superman playing');
  }
}
