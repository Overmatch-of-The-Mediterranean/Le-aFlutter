// ListView.separated 懒加载，可添加分割线
// class _HYHomeContentState extends State<HYHomeContent> {
//   bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     return  ListView.separated(
//         itemCount: 40,
//         itemBuilder: (BuildContext context, int index){
//           return ListTile(
//             leading: Icon(Icons.people),
//           trailing: Icon(Icons.delete),
//           title: Text('联系人${ index + 1 }'),
//           subtitle: Text('电话号：18888888888'),
//           );
//         },
//         separatorBuilder: (BuildContext context, int index){
//           return Divider(
//             color: Colors.red,
//           );
//         },
//
//     );
//
//   }
// }





// ListView.builder 懒加载
// class _HYHomeContentState extends State<HYHomeContent> {
//   bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     return  ListView.builder(
//       itemCount: 30,
//       itemBuilder: (BuildContext context, int index){
//         return ListTile(
//           leading: Icon(Icons.people),
//           trailing: Icon(Icons.delete),
//           title: Text('联系人${ index + 1 }'),
//           subtitle: Text('电话号：18888888888'),
//         );
//       },
//     );
//
//   }
// }




// 直接使用ListView，一次性加载完
// class _HYHomeContentState extends State<HYHomeContent> {
//  bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     return  ListView(
//       children: List.generate(100, (index){
//         return ListTile(
//           leading: Icon(Icons.people),
//           trailing: Icon(Icons.delete),
//           title: Text('联系人${ index + 1 }'),
//           subtitle: Text('电话号：18888888888'),
//         );
//       }),
//     );
//   }
// }