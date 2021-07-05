import 'package:flutter/material.dart';
import '../pages/BottomBar.dart';
import '../user/Login.dart';
import '../user/RegisterFirst.dart';
import '../user/RegisterSecond.dart';
import '../user/RegisterThird.dart';
import '../pages/topbar/TabBarControl.dart';
import '../pages/FormDemo.dart';
import '../pages/dialog_demo/Dialog.dart';
import '../pages/networkrequest/NetworkRequest.dart';
import '../pages/learn_Provider/CountsProviderRoute.dart';

var routes = {
  '/': (context) => BottomPage(),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/tabBarControl': (context) => TabBarControlPage(),
  '/form': (context) => FormDatePage(),
  '/dialog': (context) => DiaLogLearn(),
  '/network':(context)=>NetworkPage(),
  '/inherited':(context)=>CountsProviderRoute()
};

Function onGenerateRoute = (RouteSettings settings) {
  String name = settings.name;
  print(name);
  Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if(settings.arguments!=null){
      return MaterialPageRoute(builder: (context) {
        return pageContentBuilder(context, arguments: settings.arguments);
      });
    }
    return MaterialPageRoute(builder: (context) {
      return pageContentBuilder(context);
    });
  }
  return null;
};
