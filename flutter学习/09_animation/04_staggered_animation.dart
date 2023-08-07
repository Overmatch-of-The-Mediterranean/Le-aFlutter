import 'dart:math';

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
  late Animation _colorAnim;
  late Animation _opacAnim;
  late Animation _transAnim;
  bool isForward = true;


  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);


    _sizeAnim = Tween(begin: 20.0,end: 200.0).animate(_controller);
    _colorAnim = ColorTween(begin: Colors.orange,end: Colors.green).animate(_controller);
    _opacAnim = Tween(begin: 0.0,end: 1.0).animate(_controller);
    _transAnim = Tween(begin:0.0,end: 2 * pi).animate(_controller);


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
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context,child) {
            return Opacity(
              opacity:_opacAnim.value,
              child: Transform(
                transform: Matrix4.rotationZ(_transAnim.value),
                alignment: Alignment.center,
                child: Container(
                    width: _sizeAnim.value,
                    height: _sizeAnim.value,
                    color: _colorAnim.value
                ),
              ),
            );
          },
        ),
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


