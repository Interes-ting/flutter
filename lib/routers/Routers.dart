import 'package:flutter/material.dart';

import '../pages/tabs/tabs.dart';
import '../pages/login/login.dart';
import '../pages/register/register.dart';
import '../pages/tabs/user/user.dart';

final routes = {
  '/': (context) => Tabs(),
  '/login': (context) => LoginPage(),
  '/register': (context) => RegisterPage(),
  '/user': (context) => UserPage(),
  // '/search': (context) => SearchPage(),
  // '/search': (context, {arguments}) => SearchPage(arguments: arguments),//传参数
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
