import 'package:flutter/material.dart';

main ()=> runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}


class HYHomePage extends StatefulWidget {
  const HYHomePage({super.key});

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation _sizeAnim;
  bool isForward = true;


  /**
   *  1.Animation: 抽象类
   *    * 监听动画值的改变
   *    * 监听动画状态的改变
   *    * value
   *    * status
   *  2.AnimationController继承自Animation
   *    * vsync: 同步信号(this -> with SingleTickerProviderStateMixin)
   *    * forward(): 向前执行动画
   *    * reverse(): 反转执行动画
   *  3.CurvedAnimation:
   *    * 作用: 设置动画执行的速率(速度曲线)
   *  4.Tween: 设置动画执行的value范围
   *    * begin: 开始值
   *    * end: 结束值
   */

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _sizeAnim = Tween(begin: 50.0,end: 150.0).animate(_animation);

    // 监听动画的改变
    _controller.addListener(() {
      setState(() {});
    });

    // 监听动画状态的改变
    _controller.addStatusListener((status) {
      if(status == AnimationStatus.dismissed) {
        _controller.forward();
        isForward = true;
      } else if(status == AnimationStatus.completed) {
        _controller.reverse();
        isForward = false;
      }
    });

  }


  @override
  Widget build(BuildContext context) {
    print('动画执行');
    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: Center(
        child: Icon(Icons.favorite, color: Colors.red,size: _sizeAnim.value,),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.play_arrow),
        onPressed: (){
          if(_controller.isAnimating) {
            _controller.stop();
          } else if(_controller.status == AnimationStatus.reverse){
            _controller.reverse();
          } else if(_controller.status == AnimationStatus.forward) {
            _controller.forward();
          } else if (isForward) {
            _controller.forward();
          } else if (!isForward) {
            _controller.reverse();
          }
        },
      ),
    );
  }
}
