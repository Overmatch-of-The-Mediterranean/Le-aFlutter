
import 'package:flutter/material.dart';
import '../about.dart';
import '../detail.dart';
import '../unknown.dart';

class HYRouter {
  static  Map<String, WidgetBuilder> routes = {
    HYAboutPage.routeName:(context)=>HYAboutPage()
  };

  static RouteFactory onGenerateRoute = (settings){
    if(settings.name == '/detail')
      return MaterialPageRoute(
        builder: (ctx){
          return HYDetaliPage('a detail page222');
        }
      );
  };

  static RouteFactory onUnknownRoute = (settings){
    return MaterialPageRoute(
        builder: (ctx){
          return HYUnknownPage();
        }
    );
  };

}