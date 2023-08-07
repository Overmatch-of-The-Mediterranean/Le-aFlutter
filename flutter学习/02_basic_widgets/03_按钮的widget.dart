class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: Text('outlineButton'),
        ),
        ElevatedButton(
          onPressed: (){},
          child: Text('ElevatedButton',style: TextStyle(color: Colors.red ),),

        ),
        TextButton(onPressed: (){}, child: Text('TextButton'))
      ],
    );
  }
}