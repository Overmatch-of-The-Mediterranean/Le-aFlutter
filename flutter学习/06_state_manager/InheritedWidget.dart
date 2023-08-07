

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main () => runApp(MyApp());



class HYCounterWidget extends InheritedWidget {
  // 初始化数据
  final int counter;

  HYCounterWidget({this.counter = 100,required Widget child}):super(child: child);


  // 3.获取组件最近的当前InheritedWidget
  static HYCounterWidget? of(BuildContext context){
    // 沿着Element tree，寻找最近的HYCounterElement，并从Element中取出widget
    return context.dependOnInheritedWidgetOfExactType();
  }



  // 决定要不要回调依赖当前HYCounterWidget的State的didChangeDependencies
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}


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

class _HYHomePageState extends State<HYHomePage> {
  int _counter = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InteritedWidget'),
      ),
      body: HYCounterWidget(
          counter: _counter,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContentDemo1(),
                ContentDemo2(),
              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}



class ContentDemo1 extends StatefulWidget {

  @override
  State<ContentDemo1> createState() => _ContentDemo1State();
}

class _ContentDemo1State extends State<ContentDemo1> {

  @override
  void didChangeDependencies() {
    print('didChangeDependencies被调用');
  }
  @override
  Widget build(BuildContext context) {
    int counter = HYCounterWidget.of(context)!.counter!;
    return Text('当前计数：${counter}',style: TextStyle(backgroundColor: Colors.blue,fontSize: 30),);
  }
}

class ContentDemo2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    int counter = HYCounterWidget.of(context)!.counter;
    return Text('当前计数：${counter}',style: TextStyle(backgroundColor: Colors.green,fontSize: 30),);
  }
}





