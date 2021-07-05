import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class DiaLogLearn extends StatefulWidget {
  @override
  _DiaLogLearnState createState() => _DiaLogLearnState();
}

class _DiaLogLearnState extends State<DiaLogLearn> {
  showAlertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('这是提示内容'),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, '取消');
                  },
                  child: Text('取消')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, '确定');
                  },
                  child: Text('确定')),
            ],
          );
        });
    print(result);
  }

  showSimpleDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: [
              SimpleDialogOption(
                // padding: EdgeInsets.only(bottom: 10.0),
                child: Text('Option A'),
                onPressed: () {
                  Navigator.pop(context, 'Option a');
                },
              ),
              SimpleDialogOption(
                // padding: EdgeInsets.only(bottom: 10.0),
                child: Text('Option B'),
                onPressed: () {
                  Navigator.pop(context,'Option b');
                },
              ),
              SimpleDialogOption(
                child: Text('Option C'),
                onPressed: () {
                  Navigator.pop(context, 'Option c');
                },
              ),
            ],
          );
        }).then((value) => print(value));
  }

  showModalBottom() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 100.0,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Column(
                    children: [
                      FlatButton(
                        shape: CircleBorder(),
                        onPressed: () {
                          Navigator.pop(context, '微信');
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'images/demo3.jpg',
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Text('微信')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.0),
                  child: Column(
                    children: [
                      FlatButton(
                        shape: CircleBorder(),
                        onPressed: () {
                          Navigator.pop(context, 'QQ');
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'images/demo4.jpg',
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Text('QQ')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.0),
                  child: Column(
                    children: [
                      FlatButton(
                        shape: CircleBorder(),
                        onPressed: () {
                          Navigator.pop(context, '抖音');
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'images/demo5.jpg',
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Text('抖音')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.0),
                  child: Column(
                    children: [
                      FlatButton(
                        shape: CircleBorder(),
                        onPressed: () {
                          Navigator.pop(context, '朋友圈');
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'images/demo2.jpg',
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Text('朋友圈')
                    ],
                  ),
                ),
              ],
            ),
          );
        });
    print(result);
  }

  //吐司
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: 2, gravity: 0);
    // Toast.BOTTOM;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: RaisedButton(
                onPressed: () {
                  showAlertDialog();
                },
                child: Text('打开AlertDialog'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: RaisedButton(
                onPressed: () {
                  showSimpleDialog();
                },
                child: Text('打开SimpleDialog'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: RaisedButton(
                onPressed: () {
                  showModalBottom();
                },
                child: Text('打开showModalBottom'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: RaisedButton(
                onPressed: () {
                  showToast("你完了");
                },
                child: Text('打开Toast'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
