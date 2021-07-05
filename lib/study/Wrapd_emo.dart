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
      title: "Wrap布局",
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WrapPage();
  }
}

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 15.0,
      alignment: WrapAlignment.spaceAround,
      // direction: Axis.vertical,//竖着排列
      children: listDate.map((e) {
        return RaisedButton(
            onPressed: () {},
            color: Colors.grey,
            textColor: Colors.teal,
            child: Text(
              e['work'],style: TextStyle(fontSize: 20.0),
            ));
      }).toList(),
    );
  }
}

