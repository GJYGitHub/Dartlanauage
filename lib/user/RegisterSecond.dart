import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册二：输入验证码"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("输入验证码"),
            RaisedButton(child: Text("下一步"),onPressed: (){
              Navigator.pushNamed(context, '/registerThird');

              //使用替换路由完成返回根路由
              // Navigator.pushReplacementNamed(context, '/registerThird');
            },)
          ],
        ),
      ),
    );
  }
}
