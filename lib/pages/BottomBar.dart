import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tabs/HomePage.dart';
import 'tabs/SettingPage.dart';
import 'tabs/FicationPage.dart';

class BottomPage extends StatefulWidget {
  int index;

  BottomPage({this.index: 0});

  @override
  State<StatefulWidget> createState() {
    return StatePage(index: this.index);
  }
}

class StatePage extends State<BottomPage> {
  int currentIndex = 0;

  StatePage({index}) {
    currentIndex = index;
  }

  List list = [HomePage(), FicationPage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("FlutterDemo"),
      ),
      body: this.list[currentIndex],
      //控制浮动按钮的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 5.0, color: Colors.white),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: FloatingActionButton(
          child: Icon(Icons.alt_route),
          onPressed: () {
            setState(() {
              return currentIndex = 1;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.deepOrange,
        onTap: (int index) {
          setState(() {
            return currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页"),
              activeIcon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
              icon: Icon(Icons.alt_route_rounded), title: Text("分类")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置"),
              activeIcon: Icon(Icons.settings_applications_rounded)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: ClipOval(
                          child: Image.asset(
                            'images/demo.jpg',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text("谷进阳"),
                        subtitle: Text("nice"),
                      ),
                      flex: 1,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
/*
BottomAppBar的一些属性用法
shape: CircularNotchedRectangle(),//圆形缺口
child: Container(
  height: 60,
  child: Row(
    children: [
      IconButton(
        onPressed: () {
          setState(() {
            return currentIndex = 0;
          });
        },
        icon: Icon(Icons.home),
      ),
      SizedBox(),
      IconButton(
          onPressed: () {
            setState(() {
              return currentIndex = 2;
            });
          },
          icon: Icon(Icons.settings)),
    ],
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  ),
),*/
