void main(List<String> args) {
  test((int num1, int num2) {
    return num1 + num2;
  });

  var demo1 = demo();
  print(demo1(20, 30));
}

// 定义函数的类型
typedef Calculate = int Function(int num1, int num2);

void test(Calculate cal) {
  print(cal(20, 30));
}

Calculate demo() {
  return (int num1, int num2) {
    return num1 * num2;
  };
}
