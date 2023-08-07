import 'dart:io';

void main(List<String> args) {
  print('main start');

  Future(() {
    sleep(Duration(seconds: 3));
    return '第一次结果';
  }).then((res) {
    print(res);
    sleep(Duration(seconds: 2));
    return '第二次结果';
  }).then((res) {
    print(res);
    sleep(Duration(seconds: 1));
    return '第三次结果';
  }).then((res) {
    print(res);
  });

  print('main end');
}
