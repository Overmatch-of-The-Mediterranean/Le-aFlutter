

import 'package:flutter/material.dart';
import 'package:helloflutter/08_animation/pages/image_detail.dart';
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
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8
        ),
          children:List.generate(20, (index){
            String imageURL = "https://picsum.photos/200/300?random=$index";
            return GestureDetector(
                onTapDown: (details){
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context,anim1,anim2){
                        return FadeTransition(
                            opacity: anim1,
                            child: ImageDetail(imageURL)
                        );
                      }
                  ));
                },
                child: Hero(
                    tag: imageURL,
                    child: Image.network(imageURL,fit: BoxFit.cover,)
                )
            );
          })

      )
    );
  }
}


