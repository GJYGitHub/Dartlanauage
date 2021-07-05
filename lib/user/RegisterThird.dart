import 'package:flutter/material.dart';
import '../pages/BottomBar.dart';

class RegisterThirdPage extends StatefulWidget {
  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("注册三：输入密码"),
      // ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("输入密码"),
            RaisedButton(
              child: Text("完成"),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => BottomPage(
                              index: 2,
                            )),
                    (route)=>false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
