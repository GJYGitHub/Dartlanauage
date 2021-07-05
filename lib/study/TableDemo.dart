import 'package:flutter/material.dart';

void main(){
  runApp(TableDemoPage());
}

class TableDemoPage extends StatelessWidget {
  const TableDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Table(
            defaultColumnWidth: FixedColumnWidth(80.0),
            defaultVerticalAlignment:TableCellVerticalAlignment.middle,
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(children: [
                Text('row1',style: TextStyle(height: 5.0),textAlign: TextAlign.center,),
                Text('row2'),
                Text('row3'),
                Text('row4'),
              ],decoration:BoxDecoration(
                  color: Colors.red
              )),
              TableRow(children: [
                Text('row1'),
                Text('row2'),
                Text('row3'),
                Text('row4'),
              ],decoration:BoxDecoration(
                  color: Colors.cyan
              )),
              TableRow(children: [
                Text('row1'),
                Text('row2'),
                Text('row3'),
                Text('row4'),
              ],decoration:BoxDecoration(
                  color: Colors.amber
              )),
              TableRow(children: [
                Text('row1'),
                Text('row2'),
                Text('row3'),
                Text('row4'),
              ],decoration:BoxDecoration(
                color: Colors.green
              )),
            ],
          ),
        ),
      ),
    );
  }
}
