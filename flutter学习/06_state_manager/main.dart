
import 'package:flutter/material.dart';
import 'package:helloflutter/05_day/viewModel/counter_view_model.dart';
import 'package:helloflutter/05_day/viewModel/initialize_providers.dart';
import 'package:helloflutter/05_day/viewModel/userinfo_view_model.dart';
import 'package:provider/provider.dart';


/**
 * 1.创建需要共享的书
 * 2.再程序顶层使用ChangeNotifierProvider包裹，提供单个provider
 * 3.在其他位置使用共享的数据
 * * Provider.of
 * * Consumer
 * * Seclector
 * * 依赖多个viewModel 使用MultiProvider提供多个provider
 */

// main () => runApp(
//   ChangeNotifierProvider(
//       create: (context)=>CounterViewModel(),
//       child: MyApp(),
//   )
// );

main () => runApp(
    MultiProvider(
      providers: providers,
      child: MyApp(),
    )
);



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


// 使用Consumer包裹floatingActionButton
// class _HYHomePageState extends State<HYHomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('InteritedWidget'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ContentDemo1(),
//             ContentDemo2(),
//           ],
//         ),
//       ),
//       floatingActionButton: Consumer<CounterViewModel>(
//         builder: (context,counterVM,child){
//           return  FloatingActionButton(
//             child: child,
//               onPressed: (){
//                 setState(() {
//                   counterVM.counter += 1;
//                 });
//               }
//           );
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }



class _HYHomePageState extends State<HYHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('InteritedWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContentDemo1(),
            ContentDemo2(),
          ],
        ),
      ),
      floatingActionButton: Selector<CounterViewModel,CounterViewModel>(
        selector: (context,CounterViewModel){
          return CounterViewModel;
        },
        shouldRebuild:(previous, next){
          return false;
        },
        builder: (context,counterVM,child){
          print('被重建了');
          return  FloatingActionButton(
              child: child,
              onPressed: (){
                  counterVM.counter += 1;
              }
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


class ContentDemo1 extends StatefulWidget {

  @override
  State<ContentDemo1> createState() => _ContentDemo1State();
}

class _ContentDemo1State extends State<ContentDemo1> {



  @override
  void didChangeDependencies() {
    print('didChangeDependencies被调用');
  }
  @override
  Widget build(BuildContext context) {
    int counter = Provider.of<CounterViewModel>(context).counter;
    return Text('当前计数：${counter}',style: TextStyle(backgroundColor: Colors.blue,fontSize: 30),);
  }
}

class ContentDemo2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Consumer2<CounterViewModel,UserInfoViewModel>(
      builder: (context, counterVM,UserInfoViewModel, child){
        return Text('当前计数：${counterVM.counter}\n${UserInfoViewModel.userInfo.name}',style: TextStyle(backgroundColor: Colors.green,fontSize: 30),);
      },
    );
  }
}





