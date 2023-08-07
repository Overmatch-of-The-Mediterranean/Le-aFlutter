import 'package:flutter/material.dart';
import 'package:helloflutter/07_router_manager/about.dart';
import 'package:helloflutter/07_router_manager/router/router.dart';
import 'package:helloflutter/07_router_manager/unknown.dart';
import 'detail.dart';


main () => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: HYRouter.routes,
      // initialRoute:HYHomePage.routeName ,
      onGenerateRoute: HYRouter.onGenerateRoute,
      onUnknownRoute: HYRouter.onUnknownRoute,
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatefulWidget {

  // static const String routeName = "/";

  @override
  State<HYHomePage> createState() => _HYHomePageState();
}

class _HYHomePageState extends State<HYHomePage> {

  String _message = 'default page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由导航'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_message,style: TextStyle(fontSize: 30),),
            ElevatedButton(
                onPressed: ()=>_navigateToDetail(context),
                child: Text('跳转详情')
            ),
            ElevatedButton(
                onPressed: ()=>_navigateToDetail2(context),
                child: Text('跳转详情2')
            ),

            ElevatedButton(
                onPressed: ()=>_navigateToAbout(context),
                child: Text('跳转关于')
            ),
            ElevatedButton(
                onPressed: ()=>_navigateUnknown(context),
                child: Text('跳转未知')
            )
          ],
        ),
      ),
    );
  }


  _navigateToDetail(context) {
    final result = Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx){
          return  HYDetaliPage('a detail page');
        }
    ));

    result.then((value) {
      setState(() {
        _message = value;
      });
    } );
  }


  _navigateToDetail2(context) {


    final result = Navigator.of(context).pushNamed(HYDetaliPage.routeName);

    result.then((value) {
      setState(() {
        _message = value as String;
      });
    } );
  }

  _navigateToAbout(context){
    final result = Navigator.of(context).pushNamed('/about');

    result.then((value){
      print(value);
      setState(() {
        _message = value as String;
      });
    });
  }


  _navigateUnknown (context){
    Navigator.of(context).pushNamed('/aaa');
  }
}


