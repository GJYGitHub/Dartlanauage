import 'package:flutter/material.dart';
import '../pages/BottomBar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _name = "";
  var _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("登录界面"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "用户名",
                  // labelText: "用户名",
                  // border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    this._name = value;
                  });
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "密码",
                  // labelText: "密码",
                  // border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  this._password = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 400.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.blue,
                  child: Text(
                    "登录",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    if (this._name == "gujinyang" &&
                        this._password == "123456") {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => new BottomPage()),
                      );
                    } else {
                      print("用户名：$_name密码：$_password");
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
