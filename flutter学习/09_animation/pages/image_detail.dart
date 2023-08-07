

import 'package:flutter/material.dart';

class ImageDetail extends StatelessWidget {
  String imageURL;

  ImageDetail(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
            onTapDown: (details){
              Navigator.of(context).pop();
            },
            child: Hero(
                tag: imageURL,
                child: Image.network(imageURL)
            )
        ),
      ),
    );
  }
}