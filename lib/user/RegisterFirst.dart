import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册一：输入手机号"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("输入手机号"),
            RaisedButton(child: Text("下一步"),onPressed: (){
              Navigator.pushNamed(context, '/registerSecond');
              //使用替换路由完成返回根路由
              // Navigator.pushReplacementNamed(context, '/registerSecond');
            },)
          ],
        ),
      ),
    );
  }
}
