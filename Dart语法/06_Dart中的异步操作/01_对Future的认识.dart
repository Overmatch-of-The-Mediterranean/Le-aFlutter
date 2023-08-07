import 'dart:io';

void main(List<String> args) {
  print('main start');

  final future = getNetworkData();

  future.then((res) {
    print(res);
  }).catchError((err) {
    print(err);
  }).whenComplete(() {
    print('代码执行完成');
  });

  print('main end');
}

Future<String> getNetworkData() {
  return Future<String>(() {
    sleep(Duration(seconds: 3));

    // return 'hello world';
    throw Exception('我是错误信息');
  });
}
