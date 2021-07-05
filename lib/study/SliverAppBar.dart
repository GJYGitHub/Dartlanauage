import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({Key key}) : super(key: key);

  @override
  _SliverAppBarDemoState createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [SliverAppBar(
        pinned: true,
        floating:true,
        expandedHeight: 150.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('images/demo2.jpg',fit: BoxFit.cover,),
          title: Text('Basic Slivers'),
        ),
      ),
      SliverList(delegate:SliverChildListDelegate([
        Container(color: Colors.amber,height: 200.0,),
        Container(color: Colors.black,height: 200.0,),
        Container(color: Colors.blueAccent,height: 200.0,),
        Container(color: Colors.deepOrange,height: 200.0,),
        Container(color: Colors.green,height: 200.0,),
      ]),)],
    );
  }
}


