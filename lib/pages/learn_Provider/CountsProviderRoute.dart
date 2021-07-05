import 'dart:io';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/learn_Provider/CountsModel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo/pages/io/IO_Practice.dart';

class CountsProviderRoute extends StatefulWidget {
  @override
  _CountsProviderRouteState createState() => _CountsProviderRouteState();
}

class _CountsProviderRouteState extends State<CountsProviderRoute> {
  //实例化IoPractice类
  IoPractice  ioPractice= IoPractice();
  int _count;
  @override
  void initState() {
    super.initState();
    //初始化_count为从文件中读取的数据
    ioPractice.readCounter().then((value){
      setState(() {
        _count=value;
      });

    });
  }
  Future<File> writeIn(){
    _count++;
    return ioPractice.writeCounter(_count);
  }
  @override
  Widget build(BuildContext context) {
    CountsModel countsModel = Provider.of<CountsModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('ProviderDemo'),
        ),
        body: Center(
          child:
          Consumer<CountsModel>(builder: (context, countModel, child) {
            return Text('$_count');
          }),
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          child: Icon(Icons.add),
          onPressed: () {
            writeIn();
            Provider.of<CountsModel>(context,listen: false).writeIn(_count);
            print(_count);
          },
        ));
  }
}
