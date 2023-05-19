
import 'package:naviandroute/Pages/Page1.dart';

import 'Page2.dart';
import 'Settings.dart';

import 'package:flutter/material.dart';

class Routes {
  static const String settings = '/settings';
  static const String page1 = '/page1';
  static const String page2 = '/page2';

  static Map<String, WidgetBuilder> routes = {
    settings: (context) => Settings(title: settings.toString()),
  };

  static const List<Widget> list = <Widget>[
    Settings(title: "title"),
    Page1(),
    Page2(),
  ];
}
