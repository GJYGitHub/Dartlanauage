import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class FormDatePage extends StatefulWidget {
  @override
  _FormDatePageState createState() => _FormDatePageState();
}

class _FormDatePageState extends State<FormDatePage> {
  final _formKey = GlobalKey<FormState>();
  String name;
  int sex = 1;
  String details;
  bool isOpen = false;
  List _listHobby = [
    {
      'check': false,
      'hobby': '看书',
    },
    {
      'check': false,
      'hobby': '听歌',
    },
    {
      'check': false,
      'hobby': '写代码',
    }
  ];

//性别改变函数
  void sexCheck(value) {
    setState(() {
      sex = value;
    });
  }

//爱好选择方法
  List<Widget> getHobby() {
    List<Widget> tempList = [];
    // tempList.add(Text('爱好'));
    for (int i = 0; i < _listHobby.length; i++) {
      tempList.add(Row(
        children: [
          Text(_listHobby[i]['hobby'] + "："),
          Checkbox(
              value: this._listHobby[i]['check'],
              onChanged: (isCheck) {
                setState(() {
                  // tempList[i]['check']=isCheck;
                  this._listHobby[i]['check'] = isCheck;
                });
              })
        ],
      ));
    }
    return tempList;
  }

  //flutter库日期选择方法
/*  DateTime nowDate = DateTime.now();
  TimeOfDay nowTime = TimeOfDay.now();
  _showDatePicker() async {
    var result = await showDatePicker(
        context: context,
        initialDate: nowDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2100),
        locale: Locale('zh'));
    if (result == null) {
      return;
    } else {
      setState(() {
        nowDate = result;
      });
    }
  }

  _showTimePicker() {
    showTimePicker(context: context, initialTime: nowTime).then((value) {
      if (value == null) {
        return;
      } else {
        setState(() {
          nowTime = value;
        });
      }
    });
  }*/

  //第三方库日期选择方法
  DateTime nowDate = DateTime.now();
  String MIN_DATETIME = '1990-05-15 09:23:10';
  String MAX_DATETIME = '2030-06-03 21:11:00';
  String _format = 'yyyy年MM月dd日    EEE,H时:m分';
  bool _showTitle = true;
  DateTimePickerLocale _locale = DateTimePickerLocale.zh_cn;

  void _showDateTimePicker() {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: nowDate,
      dateFormat: _format,
      locale: _locale,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
      ),
      pickerMode: DateTimePickerMode.datetime,
      // show TimePicker
      onCancel: () {
        debugPrint('onCancel');
      },
      // onChange: (dateTime, List<int> index) {
      //   setState(() {
      //     nowDate = dateTime;
      //   });
      // },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          nowDate = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('学员信息登记'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              children: [
                TextFormField(
                  // autovalidate: true,//实时反馈输入框情况
                  decoration: InputDecoration(hintText: "请输入姓名"),
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return '用户名不能为空';
                    }
                  },
                  onSaved: (value) => name = value,
                ),
                Row(
                  children: [
                    Text('男：'),
                    Radio(
                      value: 1,
                      onChanged: this.sexCheck,
                      groupValue: sex,
                    ),
                    Text('女：'),
                    Radio(
                      value: 2,
                      onChanged: this.sexCheck,
                      groupValue: sex,
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Text('选择日期：'),
                    InkWell(
                      child: Text(formatDate(nowDate,
                          [yyyy, '年', mm, '月', dd, ' ', hh, ":", nn, am])),
                      onTap: _showDateTimePicker,
                    ),
                    Icon(Icons.arrow_drop_down_sharp),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: this.getHobby(),
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    hintText: "详细信息",
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                  onChanged: (value) {
                    setState(() {
                      details = value;
                    });
                  },
                ),
                // SizedBox(height: 10),
                // Switch(
                //     value: isOpen,
                //     onChanged: (isTrue) {
                //       setState(() {
                //         isOpen = isTrue;
                //       });
                //     }),
                RaisedButton(
                  child: Text('提交信息'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print('表单验证成功');
                      _formKey.currentState.save();
                    }
                    print('姓名：' + name);
                    print(sex == 1 ? '男' : '女');
                    print(nowDate);
                    print(nowDate.millisecondsSinceEpoch);
                    print(DateTime.fromMillisecondsSinceEpoch(Timeline.now));
                    print(_listHobby);
                    print(details);
                    print(isOpen);
                    Navigator.pop(context);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                ) //圆角形
              ],
            ),
          ),
        ));
  }
}
