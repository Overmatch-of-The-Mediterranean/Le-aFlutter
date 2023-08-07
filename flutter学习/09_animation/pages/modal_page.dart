

import 'package:flutter/material.dart';

class ModalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Modal Page'),
      ),
      body: Center(
        child: Text('modal page',style: TextStyle(fontSize: 30),),
      ),
    );
  }
}