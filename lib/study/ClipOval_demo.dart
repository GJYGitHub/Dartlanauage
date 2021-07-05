import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo2",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航栏"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              color: Colors.red,
              width: 2.0,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              "images/3.0x/demo.jpg",
              color: Colors.red,
              colorBlendMode: BlendMode.plus,
              width: 300,
              height: 300,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
