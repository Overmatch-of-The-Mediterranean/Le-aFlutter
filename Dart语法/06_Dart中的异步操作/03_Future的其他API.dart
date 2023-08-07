void main(List<String> args) {
  // Future(() {
  //   return 'hello world';
  // }).then((res) {
  //   print(res);
  // });

  // 等价于下面这个
  Future.value('hello world').then((res) {
    print(res);
  });

  Future.error('我是错误信息').catchError((err) {
    print(err);
  });

  Future.delayed(Duration(seconds: 3), () {
    return 'hello Flutter';
  }).then((res) {
    print(res);
    return 'hello world';
  }).then((res) {
    print(res);
  });
}
