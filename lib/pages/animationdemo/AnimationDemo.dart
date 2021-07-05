import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class AnimationDemoPage extends StatefulWidget {
  const AnimationDemoPage({Key key}) : super(key: key);

  @override
  AnimationDemoState createState() => AnimationDemoState();
}

class AnimationDemoState extends State<AnimationDemoPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Alignment> alignmentAnimation;
  //
  /*Animation<double> curveAnimation;
  Animation<Color> tweenAnimation;
  Animation<int> tween1Animation;*/
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //创建AnimationController动画
    _controller = AnimationController(
      vsync: this, //传入TicKer对象
      duration: new Duration(seconds: 2), //传入动画持续时间
    );
  //
  //   AlignmentTween alignmentTween =
  //       AlignmentTween(begin: Alignment.topLeft, end: Alignment.bottomRight);
  //   alignmentAnimation = alignmentTween.animate(_controller);
  //   //创建曲线模型为easeOut的动画
  //   /*curveAnimation =
  //       CurvedAnimation(parent: _controller, curve: Curves.easeOut);
  //   //创建颜色差值
  //   ColorTween tween = ColorTween(begin: Colors.red, end: Colors.blue);
  //   tweenAnimation = tween.animate(_controller);
  //
  //   Animation<int> tween1 =
  //       IntTween(begin: 0, end: 255).animate(curveAnimation);
  //   // tween1Animation = tween1;*/
  //   // _controller.addListener(() {
  //   //   setState(() {});
  //   // });
  }

  // void startAnimation() {
  //   //调用AnimationController的forward方法启动动画
  //   _controller.forward();
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  //隐式动画组件使用方法
  double width = 30;
  double height = 30;
  Color backgroundColor = Colors.black;

  void startAnimation() {
    setState(() {
      width = 100;
      height = 100;
      backgroundColor = Colors.deepOrange;
    });
  }

  // double _top = 0;
  // double _left=0;
  // double width = 30;
  // double height = 30;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Animation'),
          ),
          body:
             /* Row(
              Container(
                width: curveAnimation.value * 100,
                height: curveAnimation.value * 100,
                color: tweenAnimation.value,
              ),
              children: [*/
              // 隐式动画组件
              AnimatedContainer(
                duration: Duration(milliseconds: 2000),
                width: width,
                height: height,
                color: backgroundColor,
              ),

          // ]),
          floatingActionButton: FloatingActionButton(
            onPressed: startAnimation,
            child: Text('改变'),
          )
      ),
    );
  }
}
