import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FicationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FicationState();
  }
}

class FicationState extends State<FicationPage> {
  bool _isCheck = false;

  //一段时间后将任务放入事件列表
  Future<String> _future = Future<String>.delayed(
    //表示两秒后
      Duration(seconds: 2),
      //异步方法体
          () => '完成了！');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.white,
            title: TabBar(
              tabs: [Text("热门"), Text("推荐"), Text("CheckBoxDemo")],
              indicatorSize: TabBarIndicatorSize.label,
              // labelColor: Colors.white,
              // indicatorColor: Colors.deepOrange,
              unselectedLabelColor: Colors.black,
            ),
            centerTitle: true,
          ),
          body: TabBarView(children: [
            FutureBuilder<String>(
              future: _future,
              builder: (context, AsyncSnapshot<String> snapshot) {
                List<Widget> children;
                //异步任务完成，snapshot.data表示异步任务返回的数据
                if (snapshot.hasData) {
                  children = <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text('数据：${snapshot.data}'),
                    ),
                  ];
                } else {
                  //异步事件执行中
                  children = <Widget>[
                    SizedBox(
                      child: CircularProgressIndicator(),
                      width: 60.0,
                      height: 60.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text('等待异步事件完成······'),
                    )
                  ];
                }
                return Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: children,),
                );
              },
            ),
            ListView(
              children: [Text("第二个")],
            ),
            Column(
              children: [
                Checkbox(
                    value: _isCheck,
                    onChanged: (isCheck) {
                      setState(() {
                        _isCheck = isCheck;
                      });
                    }),
                Text(_isCheck ? "已选中" : "未选中")
              ],
            )
          ]),
        ));
  }
}
