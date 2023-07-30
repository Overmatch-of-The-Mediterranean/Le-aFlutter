void main(List<String> args) {
  final color = Color.red;

  switch (color) {
    case Color.red:
      print('红色');
      break;
    case Color.bule:
      print('蓝色');
      break;
    case Color.green:
      print('绿色');
      break;
  }
}

enum Color { red, bule, green }
