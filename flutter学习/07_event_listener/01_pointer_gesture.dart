import 'package:flutter/material.dart';

main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDemo(),
    );
  }
}



class GestureDemo extends StatelessWidget {
  const GestureDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('事件监听'),
      ),
      body: Center(
          child:Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTapDown: (details){
                    print('outer');
                    // print(details.globalPosition);
                    // print(details.localPosition);
                  },
                  // onTapUp: (details){
                  //   print('onTapUp');
                  // },
                  // onTap: (){
                  //   print('onTap');
                  // },
                  // onTapCancel: (){
                  //   print('onTapCancel');
                  // },

                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                  ),
                ),
                IgnorePointer(
                  child: GestureDetector(
                    onTapDown: (details){
                      print('inner');

                    },
                    // onTapUp: (details){
                    //   print('onTapUp');
                    // },
                    // onTap: (){
                    //   print('onTap');
                    // },
                    // onTapCancel: (){
                    //   print('onTapCancel');
                    // },

                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                ),
              ]
          )
      ),
    );
  }
}



// class GestureDemo extends StatelessWidget {
//   const GestureDemo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('事件监听'),
//       ),
//       body: Center(
//         child:GestureDetector(
//           onTapDown: (details){
//             print('onTapDown');
//             print(details.globalPosition);
//             print(details.localPosition);
//           },
//           onTapUp: (details){
//             print('onTapUp');
//           },
//           onTap: (){
//             print('onTap');
//           },
//           onTapCancel: (){
//             print('onTapCancel');
//           },
//           onDoubleTap: (){
//             print('onDoubleTap');
//           },
//           onLongPress: (){
//             print('onLongPress');
//           },
//
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.green,
//           ),
//         )
//       ),
//     );
//   }
// }




// class ListenerDemo extends StatelessWidget {
//   const ListenerDemo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('事件监听'),
//       ),
//       body: Center(
//         child: Listener(
//           onPointerDown: (event){
//             print('onPointerDowm');
//             print(event.position);
//             print(event.localPosition);
//           },
//           onPointerMove: (event){
//             print('onPointerMove');
//           },
//           onPointerUp: (event){
//             print('onPointerUp');
//           },
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.green,
//           ),
//         ),
//       ),
//     );
//   }
// }
