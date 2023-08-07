class HYHomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.all(50),
      height: 300,
      width: 300,
      alignment: Alignment(0,0),
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
              width: 5,
              color: Colors.purple
          ),
          boxShadow: [
            BoxShadow(color: Colors.orange, offset: Offset(5,5),spreadRadius:5 ,blurRadius: 10),
            BoxShadow(color: Colors.blue, offset: Offset(-5,5),spreadRadius:5 ,blurRadius: 10)
          ]

      ),
      child: Text(
        'hello world',
        style: TextStyle(fontSize: 30,backgroundColor: Colors.red),
      ),
    );
  }
}

class HYHomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Text('hello world'),
    );
  }
}