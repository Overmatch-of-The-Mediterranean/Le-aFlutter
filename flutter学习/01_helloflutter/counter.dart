import 'package:flutter/material.dart';



main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HYHomePage(),
    );
  }
}


class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('counter'),
          ],
        ),
      ),
      body: HYHomeContent(),
    );
  }
}


class HYHomeContent extends StatefulWidget {
  const HYHomeContent({super.key});

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed:(){
                  setState(() {
                    counter++;
                  });
                } ,
                child: Text('+')
            ),
            ElevatedButton(
                onPressed:(){
                  setState(() {
                    counter--;
                  });
                } ,
                child: Text('-')
            )
          ],
        ),
        Text('当前计数为：$counter'),
      ],
    );
  }
}
