import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "布局练习",
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconsPage(
      Icon(Icons.home),
      Icon(Icons.clear),
      Icon(Icons.search),
      color1: Colors.yellow,
    );
  }
}

class IconsPage extends StatelessWidget {
  Icon icon1;
  Icon icon2;
  Icon icon3;
  Color color1;

  IconsPage(this.icon1, this.icon2, this.icon3, {this.color1});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10.0),
          height: 200,
          color: Colors.blue,
          child: Stack(
            children: [
              Align(
                  child: Image.asset("images/demo.jpg"),
                  alignment: Alignment.center),
              Positioned(child: Text("ドラえもん"),top: 180,left: 247,),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                child: Icon(
                  icon1.icon,
                  size: 50,
                ),
                color: Colors.yellow,
                height: 100,
              ),
              flex: 2,
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                child: ListView(
                  children: [
                    Container(
                      color: Colors.red,
                      child: Icon(
                        icon2.icon,
                        size: 45,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.green,
                      child: Icon(
                        icon3.icon,
                        size: 45,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
