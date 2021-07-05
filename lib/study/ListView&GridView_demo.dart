import 'dart:html';

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
      title: "Demo2",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Widget getlistDate(context,index){
  //   return ListTile(
  //     title: Text(listDate[index]["name"]),
  //     subtitle: Text(listDate[index]["age"]),
  //     leading: Image.asset('images/demo.jpg'),
  //   );
  // }

  // List<Widget> getlistDate() {
  //   var list = listDate.map((value) {
  //     return ListTile(
  //       title: Text(value["name"]),
  //       subtitle: Text(value["age"]),
  //       leading: Image.asset('images/demo.jpg'),
  //     );
  //   });
  //   return list.toList();
  // }

//GridView
//   List<Widget> getListDate() {
//     var list = listDate.map((value) {
//       return Container(
//         decoration: BoxDecoration(
//             border: Border.all(
//           color: Colors.grey,
//           width: 2.0,
//         )),
//         child: Column(
//           children: <Widget>[
//             Image.asset(
//               "images/demo.jpg",
//               width: 100,
//               height: 100,
//             ),
//             Text(
//               value["name"],
//               style: TextStyle(fontSize: 30),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       );
//     });
//     return list.toList();
//   }

  Widget getListDate(context, index) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: Color.fromRGBO(233, 233, 220, 0.8),
        width: 1.0,
      )),
      child: Column(
        children: [
          Image.asset(
            "images/demo.jpg",
            fit: BoxFit.cover,
            // width: 250,
            // height: 200,
          ),
          // Text(listDate[index]["name"]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航栏"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(13.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.755,
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
        ),
        itemCount: listDate.length,
        itemBuilder: this.getListDate,

      ),
    );
  }
}
