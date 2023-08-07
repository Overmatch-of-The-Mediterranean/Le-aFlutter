
import 'package:flutter/material.dart';



class HYAboutPage extends StatelessWidget {
  static const String routeName = '/about';



  @override
  Widget build(BuildContext context) {
    // final String? message = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text('关于页'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('about page',style: TextStyle(fontSize: 30),),
            ElevatedButton(
                onPressed: ()=>_backhome(context),
                child: Text('回到首页')
            )
          ],
        ),
      ),
    );
  }

  _backhome (context){
    Navigator.of(context).pop('a home page-about');
  }
}