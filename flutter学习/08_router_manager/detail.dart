

import 'package:flutter/material.dart';



class HYDetaliPage extends StatelessWidget {

  static const String routeName = '/detail';

  String _message = '';

  HYDetaliPage(this._message);


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        _backhome(context);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('详情页'),
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: (){
          //     _backhome(context);
          //   },
          // ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_message,style: TextStyle(fontSize: 30),),
              ElevatedButton(
                  onPressed: (){
                    _backhome(context);
                  },
                  child: Text('回到首页')
              )
            ],
          ),
        ),
      ),
    );
  }

  _backhome (context){
    Navigator.of(context).pop('a home page');
  }
}