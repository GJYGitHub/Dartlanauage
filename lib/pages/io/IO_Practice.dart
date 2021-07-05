import 'dart:io';
import 'package:path_provider/path_provider.dart';

class IoPractice {
  //获得文档目录
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  //获得counter.txt文件的引用
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }
  //读取保存在文件中的数值
  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      //读取文件
      String contents = await file.readAsString();
      if (contents == null) return 0;
      return int.parse(contents);
    } catch (e) {
      //如果产生异常，返回0
      return 0;
    }
  }
  //写入计数值
  Future<File> writeCounter(int counter) async{
    final file = await _localFile;
    //写入文件
    return file.writeAsString('$counter');
  }
}
