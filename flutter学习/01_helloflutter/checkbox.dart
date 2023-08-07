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


class HYHomeBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HYHomeBodyState();
  }
}

class HYHomeBodyState extends State<HYHomeBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value){
                this.setState(() {
                  flag = value!;
                });
              }
          ),
          Text(
            '同意协议',
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );

  }
}
