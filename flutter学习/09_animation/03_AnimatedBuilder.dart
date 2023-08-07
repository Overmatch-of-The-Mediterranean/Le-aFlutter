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


  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this,duration: Duration(seconds: 3));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _sizeAnim = Tween(begin: 50.0,end: 150.0).animate(_animation);


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
            return Icon(Icons.favorite, color: Colors.red,size: _sizeAnim.value,);
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


