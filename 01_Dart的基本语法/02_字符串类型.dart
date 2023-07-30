void main(List<String> args) {
  // 1.定义字符串
  var str1 = 'hhh1';
  var str2 = "hhh2";
  // 该字符串写法可以换行
  var str3 = """
  aaa
  bbb
  ccc
  """;
  print(str3);

  // 2.字符串和表达式拼接

  var age = 20;

  // 拼接变量可以省去{}，表达式不可
  var message1 = "name is ${str1}, age is ${age}";
  var message2 = 'name is ${str2}, age is ${age}';
  var messgae3 = "name is $str2, age type is ${age.runtimeType}";

  print(message1);
  print(message2);
  print(messgae3);
}
