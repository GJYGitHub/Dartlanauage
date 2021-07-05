import 'dart:math';
import 'dart:convert' as convert;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("导航栏"),
        ),
        body: BodyPage(),
      ),
    );
  }
}

class BodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.0,
        height: 400.0,
        child: Text(
          "${"我是内容" * 10}",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 20.0, color: Colors.deepOrange),
          overflow: TextOverflow.ellipsis,
          //超出显示范围的的显示方式
          textScaleFactor: 2,
          //字体放大2倍
          maxLines: 1, //最大行数1
        ),
        // alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.yellow,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        padding: EdgeInsets.all(20.0),
        // transform: Matrix4.translationValues(80, 0, 0),
        transform: Matrix4.rotationZ(0.5),//以Z轴为中心旋转
      ),
    );
  }
}
