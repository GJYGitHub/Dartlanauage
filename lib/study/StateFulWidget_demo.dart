import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'listDate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "布局",
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateFul();
  }
}

class StateFul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Test();
  }
}

class Test extends State<StateFul> {
  // int num=0;
  // int getNum(){
  //   setState(() {
  //     return num++;
  //   });
  // }
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 500,
        child: ListView.builder(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(list[index]),
            );
          },
          itemCount: list.length,
        ),
      ),
      SizedBox(
        height: 100,
      ),
      RaisedButton(
        child: Text("按钮"),
        onPressed: () {
          setState(() {
            this.list.add("新增数据1");
            this.list.add("新增数据2");
          });
        },
      )
    ]);
  }
}
