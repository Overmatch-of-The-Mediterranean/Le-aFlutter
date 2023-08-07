import 'package:flutter/material.dart';
main() => runApp( MyApp() );


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HYHomePage(),
    );
  }
}


class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text('first tlutter',style: TextStyle(fontSize: 30))
      ),
      body: HYHomeBody(),
    );
  }
}


class HYHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text(
            'hello world',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ))
    );
  }
}
