import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_demo/pages/animationdemo/AnimationDemo.dart';
import 'package:flutter_demo/pages/FormDemo.dart';



class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  List imageDate = [
    {
      'img': Image.asset(
        'images/demo1.jpg',
        fit: BoxFit.cover,
      )
    },
    {'img': Image.asset('images/demo2.jpg', fit: BoxFit.cover)},
    {'img': Image.asset('images/demo3.jpg', fit: BoxFit.cover)},
    {'img': Image.asset('images/demo4.jpg', fit: BoxFit.cover)},
    {'img': Image.asset('images/demo5.jpg', fit: BoxFit.cover)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        child: AspectRatio(
          aspectRatio: 20 / 10,
          child: Swiper(
            itemCount: imageDate.length,
            itemBuilder: (context, index) {
              return imageDate[index]['img'];
            },
            pagination: new SwiperPagination(),
            autoplay: true,
            // control: new SwiperControl(),//左右翻页箭头
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("进入TabBarControl"),
              onPressed: () {
                Navigator.pushNamed(context, "/tabBarControl");
              },
            ),
            RaisedButton(
              child: Text("进入学员登记"),
              onPressed: () {
                Navigator.pushNamed(context,'/form');
              },
            ),
            SizedBox(
              height: 5.0,
            ),
            RaisedButton(
              child: Text("进入dialog"),
              onPressed: () {
                Navigator.pushNamed(context, "/dialog");
              },
            ),
            SizedBox(
              height: 5.0,
            ),
            RaisedButton(
              child: Text("进入Network"),
              onPressed: () {
               var value = Navigator.pushNamed(context, "/network");
               value.then((value) => print(value));
              },
            ),
            SizedBox(
              height: 5.0,
            ),
            RaisedButton(
              child: Text("进入数据共享"),
              onPressed: () {
                Navigator.pushNamed(context, "/inherited");
              },
            ),
            SizedBox(
              height: 5.0,
            ),
            RaisedButton(
              child: Text("进入动画"),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>AnimationDemoPage()));
              },
            )
          ],
        ),
      )
    ]));
  }
}
