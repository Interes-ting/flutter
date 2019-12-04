import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; //ios风格
import './routers/Routers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '轻松搬家',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange, //
      ),
      // home: Tabs(),
      initialRoute: '/', //初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}
