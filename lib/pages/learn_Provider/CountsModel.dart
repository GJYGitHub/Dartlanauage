import 'package:flutter/cupertino.dart';
import 'package:flutter_demo/pages/io/IO_Practice.dart';
class CountsModel extends ChangeNotifier{
  int counts=0;

  void writeIn(int count) {
    counts=count;
    notifyListeners();
  }
}
