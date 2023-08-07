

import 'package:flutter/material.dart';
import 'package:helloflutter/08_animation/pages/modal_page.dart';

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

  @override
  void initState() {
    super.initState();


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: Center(
          child:Text('hello world',style: TextStyle(fontSize: 30),)
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.play_arrow),
        onPressed: (){
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (ctx){
          //       return ModalPage();
          //     },
          //   // fullscreenDialog: true
          // ));

          Navigator.of(context).push(PageRouteBuilder(
              transitionDuration:Duration(seconds: 3),
              pageBuilder: (context,anim1,anim2){
                return FadeTransition(
                    opacity:anim1,
                    child: ModalPage()
                );
              }
          )
          );


        },
      ),
    );
  }
}


