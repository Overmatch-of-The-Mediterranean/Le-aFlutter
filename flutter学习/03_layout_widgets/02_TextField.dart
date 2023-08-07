class HYHomeContent extends StatelessWidget {

  final usernameControll = TextEditingController();
  final passwordControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(
            controller: usernameControll,
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: '用户名',
            ),
            onChanged: (value){
              print('changed$value');
            },
            onSubmitted: (value){
              print('submit$value'); // 失去焦点
            },
          ),
          SizedBox(height: 8),
          TextField(
            controller: passwordControll,
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: '密码',
            ),
          ),
          ElevatedButton(
            onPressed: (){
              print(usernameControll.text);
              print(passwordControll.text);
              usernameControll.text = '';
              passwordControll.text = '';
            },
            child: Text('登录'),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50)
            ),
          )
        ],
      ),
    );

  }
}