import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HyHomePage(),
    );
  }
}


class HyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('products',),
          ],
        ),
      ),
      body: HyHomeContent(),
    );
  }
}


class HyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HyHomeContentItem('apple1','macbook1','https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg'),
        SizedBox(height: 8,),
        HyHomeContentItem('apple1','macbook1','https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg'),
        SizedBox(height: 8,),
        HyHomeContentItem('apple1','macbook1','https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg')
      ],
    );
  }
}

class HyHomeContentItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;

  HyHomeContentItem(this.title,this.desc,this.imageUrl);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(
            width: 8,
            color: Colors.red,
          )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('$title',style: TextStyle(fontSize: 25,color: Colors.orange),),
            ],
          ),
          SizedBox(height: 8,),
          Text('$desc',style: TextStyle(fontSize: 30,color: Colors.green),),
          SizedBox(height: 8,),
          Image.network('$imageUrl')
        ],


      ),
    );
  }
}