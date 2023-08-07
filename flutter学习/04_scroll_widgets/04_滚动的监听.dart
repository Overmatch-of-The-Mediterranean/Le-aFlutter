

import 'dart:math';

import 'package:flutter/material.dart';

main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatefulWidget {
  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {
  ScrollController _controller = ScrollController(initialScrollOffset:300);
  bool isShow = false;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      print('监听到滚动：${_controller.offset}');
      if(_controller.offset>=1000) {
        setState(() {
          isShow = true;
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('flutter'),
      // ),
      body: NotificationListener(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollStartNotification) {
            print('开始滚动');
          } else if (notification is ScrollUpdateNotification){
            print('正在滚动...,总滚动距离:${notification.metrics.maxScrollExtent} 当前滚动的位置:${notification.metrics.pixels}');
          } else if (notification is ScrollEndNotification) {
            print('结束滚动');
          }

          return true; // 不冒泡
        },
        child: ListView.builder(
            controller: _controller,
            itemCount: 100,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                leading: Icon(Icons.people),
                trailing: Icon(Icons.delete),
                title: Text('联系人${ index + 1 }'),
                subtitle: Text('电话号：188888888888'),
              );
            }
        ),
      ),
      floatingActionButton: isShow ? FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: (){
          _controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
        },
      ):null,
    );
  }
}













