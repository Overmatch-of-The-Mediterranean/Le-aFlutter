

import 'package:flutter/material.dart';

main () => runApp(MyApp());

class MyApp extends StatelessWidget{
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
          title: Text('flutter'),
        ),
        body: HYHomeContent()
    );
  }
}

class HYHomeContent extends StatefulWidget {

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/2.jpg"),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Color.fromARGB(150, 0, 0, 0),
              child: Row(
                children: [
                  Text('进击的巨人真不错', style: TextStyle(fontSize: 20),),
                  IconButton(
                    icon:Icon(Icons.favorite,color:isFavorite? Colors.red:Colors.white,),
                    onPressed: (){
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}





// Flexible 和 Expanded
// class HYHomeContent extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         // mainAxisSize: MainAxisSize.min,
//         // textDirection: TextDecoration.,
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.baseline,
//         textBaseline: TextBaseline.alphabetic,
//
//         children: [
//           // Flexible( fit: FlexFit.tight,child:Container(width: 80,height: 60, color: Colors.red,), ),
//
//           Expanded(child: Container(width: 80, height: 60, color: Colors.red,),),
//           Container(
//             width: 120,
//             height: 100,
//             color: Colors.green,
//           ),
//           Container(
//             width: 90,
//             height: 80,
//             color: Colors.blue,
//           ),
//           Container(
//             width: 90,
//             height: 80,
//             color: Colors.orange,
//           )
//         ],
//       ),
//     );
//   }
// }



// class HYHomeContent extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return
// }


// Column
// class HYHomeContent extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.baseline,
//         textBaseline: TextBaseline.alphabetic,
//         verticalDirection: VerticalDirection.up,
//         children: [
//           Container(
//             width: 80,
//             height: 60,
//             color: Colors.red,
//             child: Text('hellox', style: TextStyle(fontSize: 20),),
//           ),
//           Container(
//             width: 120,
//             height: 100,
//             color: Colors.green,
//             child: Text('worldx', style: TextStyle(fontSize: 30),),
//           ),
//           Container(
//             width: 90,
//             height: 80,
//             color: Colors.blue,
//             child: Text('abcx', style: TextStyle(fontSize: 20),),
//           ),
//           Container(
//             width: 90,
//             height: 80,
//             color: Colors.orange,
//             child: Text('cbax', style: TextStyle(fontSize: 20),),
//           )
//         ],
//       ),
//     );
//   }
// }



// Row
// class HYHomeContent extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         // mainAxisSize: MainAxisSize.min,
//         // textDirection: TextDecoration.,
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.baseline,
//         textBaseline: TextBaseline.alphabetic,
//
//         children: [
//           Container(
//             width: 80,
//             height: 60,
//             color: Colors.red,
//             child: Text('hellox', style: TextStyle(fontSize: 20),),
//           ),
//           Container(
//             width: 120,
//             height: 100,
//             color: Colors.green,
//             child: Text('worldx', style: TextStyle(fontSize: 30),),
//           ),
//           Container(
//             width: 90,
//             height: 80,
//             color: Colors.blue,
//             child: Text('abcx', style: TextStyle(fontSize: 20),),
//           ),
//           Container(
//             width: 90,
//             height: 80,
//             color: Colors.orange,
//             child: Text('cbax', style: TextStyle(fontSize: 20),),
//           )
//         ],
//       ),
//     );
//   }
// }


