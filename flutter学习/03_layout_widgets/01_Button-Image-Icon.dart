class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: Text('outlineButton'),
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              minimumSize: Size(100,50)
          ),
        ),



        ElevatedButton(
            onPressed: (){},
            child: Text('ElevatedButton',style: TextStyle(color: Colors.red ),),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
                )
            )

        ),
        TextButton(
          onPressed: (){},
          child: Text('TextButton'),
          style: TextButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              )
          ),
        )
      ],
    );
  }
}


class HYHomeContent extends StatelessWidget {
  final imageUrl = 'https://img4.mukewang.com/szimg/64b0cc640982df8805400304.png';
  @override
  Widget build(BuildContext context) {
    return FadeInImage(
        placeholder: AssetImage('assets/images/1.jpg'),
        image: NetworkImage(imageUrl)
    );
  }
}

class HYHomeContent extends StatelessWidget {
  final imageUrl = 'https://img4.mukewang.com/szimg/64b0cc640982df8805400304.png';
  @override
  Widget build(BuildContext context) {
    // return Icon(Icons.pets, size: 300, color: Colors.orange,);
    return Icon(IconData(0xe91d, fontFamily: 'MaterialIcons'), size: 300, color: Colors.orange,);
    // return Text("\ue91d", style: TextStyle(fontSize: 100, color: Colors.orange, fontFamily: "MaterialIcons"),);
  }
}