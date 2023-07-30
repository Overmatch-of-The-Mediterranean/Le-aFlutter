// import 'dart:math';

// import './utils/date_utils.dart';
// import './utils/math_utils.dart' as mUtils;

import './utils//utils.dart';

void main(List<String> args) {
  print(dateFormat());

  // 函数名起冲突可以使用as起别名
  // print(mUtils.max(20, 30));
  print(max(20, 30));

  // 库中自定义函数不能导入使用, 带_的都是私有的
  // print(mUtils._min());
}
