void main(List<String> args) {
  final p = SuperMan();
  p.run();
  p.player();
}

// mixin要搭配with使用

mixin Runner {
  run() {
    print('running');
  }
}

mixin Player {
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

class SuperMan extends Animal with Runner, Player {
  run() {
    print('superman running');
  }

  player() {
    print('superman playing');
  }
}
