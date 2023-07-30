void main(List<String> args) {
  // 1.将定义的函数作为参数
  test(bar);

  // 2.匿名函数作为参数
  test(() {
    print('匿名函数被调用');
  });

  // 3.箭头函数作为参数, Dart中的箭头函数只能有一句
  test(() => print('箭头函数被调用'));
}

void test(Function foo) {
  foo();
}

void bar() {
  print('bar被调用');
}
