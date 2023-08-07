import 'dart:isolate';

void main(List<String> args) async {
  print('main start');

  // 创建管道
  ReceivePort receivePort = ReceivePort();

  // 创建Isolate
  Isolate isolate = await Isolate.spawn<SendPort>(foo, receivePort.sendPort);

  // 监听管道
  receivePort.listen((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  });

  print('main end');
}

void foo(SendPort sendPort) {
  return sendPort.send('hello world');
}
