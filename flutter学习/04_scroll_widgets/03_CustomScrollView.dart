class _HYHomeContentState extends State<HYHomeContent> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight:300,
          flexibleSpace: FlexibleSpaceBar(
            title: Row(
              children: [
                Text("Hello World")
              ],
            ),
            background: Image.asset("assets/images/2.jpg", fit: BoxFit.cover,),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
          ),
          delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                return Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
                );
              },
              childCount: 100
          ),
        ),
      ],
    );
  }
}



class _HYHomeContentState extends State<HYHomeContent> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all( 8),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3
              ),
              delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index){
                    return Container(
                      width: 200,
                      height: 200,
                      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
                    );
                  },
                  childCount: 100
              ),
            ),
          ),
        )
      ],
    );
  }
}