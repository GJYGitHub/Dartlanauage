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
    return BodyPage();
  }
}

class BodyPage extends StatelessWidget {
  //从数据库取数据

  List<Widget> getListDate() {
    var list = listDate.map((value) {
      return Card(
        color: Colors.grey,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 15 / 8,
              child: Image.asset(
                'images/demo1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.asset(
                  'images/demo.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(value["name"]),
              subtitle: Text(value["address"]),
            ),
          ],
        ),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this.getListDate(),
    );
  }
}
