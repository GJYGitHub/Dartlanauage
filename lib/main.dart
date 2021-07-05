import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/learn_Provider/CountsModel.dart';
import 'package:provider/provider.dart';
import 'routes/RouSet.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_demo/study/SliverAppBar.dart';

void main() {
  runApp(ChangeNotifierProvider<CountsModel>(
    create: (context) => CountsModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //去掉debug图标
      title: 'Flutter Demo',
      // home: SliverAppBarDemo(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      //国际化
      localizationsDelegates: [
        // ... app-specific localization delegat[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('he', 'IL'), // Hebrew
        // ... other locales the app supports
      ],
    );
  }
}
