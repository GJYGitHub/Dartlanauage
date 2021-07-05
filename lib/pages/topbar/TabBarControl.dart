import 'package:flutter/material.dart';

class TabBarControlPage extends StatefulWidget {

  @override
  _TabBarControlPageState createState()=>_TabBarControlPageState();
}

class _TabBarControlPageState extends State<TabBarControlPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    //生命周期--初始化
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 10, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControl_Demo"),
        bottom: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          // labelColor: Colors.red,
          // indicatorColor: Colors.red,
          unselectedLabelColor: Colors.black,
          controller: this._tabController,
          tabs: [
            Text("网文"),
            Text("名著"),
            Text("网文"),
            Text("名著"),
            Text("网文"),
            Text("名著"),
            Text("网文"),
            Text("名著"),
            Text("网文"),
            Text("名著")
          ],
        ),
      ),
      body: TabBarView(controller: this._tabController, children: [
        Text("网文内容"),
        Text("名著内容"),
        Text("网文内容"),
        Text("名著内容"),
        Text("网文内容"),
        Text("名著内容"),
        Text("网文内容"),
        Text("名著内容"),
        Text("网文内容"),
        Text("名著内容")
      ]),
    );
  }
}
