// GridView.builder 懒加载
// class _HYHomeContentState extends State<HYHomeContent> {
//   bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     return  GridView.builder(
//         itemCount:40,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3
//         ),
//         itemBuilder: (BuildContext context, int index){
//           return Container(
//             color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
//           );
//         }
//     );
//   }
// }




// maxCrossAxisExtent, 每个item的最大范围。
// class _HYHomeContentState extends State<HYHomeContent> {
//   bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     return  GridView(
//         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent (
//             maxCrossAxisExtent:300,
//             childAspectRatio: 1.8 // 宽高比
//         ),
//       children: List.generate(99, (index) {
//         return Container(
//           color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
//         );
//       }),
//     );
//   }
// }





// GridView的SliverGridDelegateWithFixedCrossAxisCount方式
// class _HYHomeContentState extends State<HYHomeContent> {
//   bool isFavorite = false;
//   @override
//   Widget build(BuildContext context) {
//     return  GridView(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3
//         ),
//         children: List.generate(100, (index) {
//           return  Container(
//             color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
//           );
//         })
//     );
//   }
// }