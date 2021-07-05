import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:dio/dio.dart';

class NetworkPage extends StatefulWidget {
  @override
  _NetworkPageState createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
//请求数据
  getData() async {
    var response = await Dio().get('https://www.cnblogs.com/it-tsz/p/12496863.html');
    print('Response status:${response.statusCode}');
    print('Response body:${response.data}');
    print(jsonDecode(response.data) is Map);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: getData,child: Text('请求数据'),),
            RaisedButton(onPressed: (){
              Navigator.pop(context,"返回值");
            },child: Text('提交数据'),),
          ],
        ),
      ),
    );
  }
}
