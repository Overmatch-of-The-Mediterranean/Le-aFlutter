import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';

final eventBus = EventBus();

main () => runApp(MyApp());


class UserInfo {
  String name;
  int age;

  UserInfo(this.name,this.age);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EventBus'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){

                eventBus.fire(UserInfo('tom', 21));
              },
              child: Text('fire')
          ),
          Demo()
        ],
      ),
    );
  }
}

class Demo extends StatefulWidget {

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  String _message = 'hello world';

  @override
  void initState() {
    super.initState();

    eventBus.on<UserInfo>().listen((event) {
      setState(() {
        _message = '${event.name}-${event.age}';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(_message,style: TextStyle(fontSize: 30),);
  }
}







