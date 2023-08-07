void main(List<String> args) {
  // 1.列表List []
  // const list = ['aaa', 'bbb', 'ccc']; const 定义不可修改
  var list = ['aaa', 'bbb', 'ccc', 'aaa'];
  list.add('ddd');
  print(list);

  // 2.集合Set {}
  var set = {'aaaa', 'bbbb', 'cccc'};

  // 2.1集合常见操作
  // 2.1.1 获取集合长度
  print(set.length);

  // 2.1.2 添加/删除/包含操作
  set.add('e');
  print(set);

  set.remove('aaaa'); // 根据值删除
  print(set);

  print(set.contains('bbbb'));

  // 可用来去重
  list = Set<String>.from(list).toList();
  print(list);

  // 3.映射Map
  var map = {"name": 'yahu', "age": "20"};
  print(map);

  // 3.1 Map的操作
  // 3.1.1 根据key获取value
  print(map['name']);

  // 3.1.2获取所有的entries
  print(map.entries);

  // 3.1.3获取所有keys
  print(map.keys);

  // 3.1.4获取所有values
  print(map.values);

  // 3.1.5判断是否包含某个key或value
  print(map.containsKey('name'));
  print(map.containsValue("20"));

  // 3.1.6根据key删除元素
  map.remove('age');
  print(map);
}
