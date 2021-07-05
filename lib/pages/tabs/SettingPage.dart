import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingState();
  }
}

class SettingState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("前往登录"),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text("前往注册"),
              onPressed: () {
                Navigator.pushNamed(context, '/registerFirst');
              },
            )
          ],
        ),
      ),
    );
  }
}
