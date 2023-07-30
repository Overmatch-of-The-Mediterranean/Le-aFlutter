void main(List<String> args) {
  // 1.??=
  // 当name有值时，??=不起作用
  // 当name为null时，??=进行赋值
  // var name = null;
  // name ??= 'coderwhy';
  // print(name);

  // ??
  // 当左边不为空时，取左边的值
  // 当左边为null时，取右边的值
  var name = null;
  name = name ?? 'lll';
  print(name);
}
