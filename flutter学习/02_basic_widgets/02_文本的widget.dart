class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Text(
      '《定风波》 苏轼 莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。',
      textAlign:TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: 20,
          color: Colors.green
      ),
    );
  }
}

class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Text.rich(
      TextSpan(
        // text: 'hello world',
        // style: TextStyle(fontSize: 30,color: Colors.red),
          children: [
            TextSpan( text: 'hello world', style: TextStyle(fontSize: 30,color: Colors.green)),
            TextSpan( text: 'hello world', style: TextStyle(fontSize: 30,color: Colors.red)),
            WidgetSpan(child: Icon(Icons.favorite,color: Colors.red,))

          ]

      ),

    );
  }
}