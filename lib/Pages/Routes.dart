// Importing necessary packages and files
import 'package:naviandroute/Pages/Page1.dart';
import 'Todo.dart';
import 'Settings.dart';
import 'package:flutter/material.dart';

// Defining a class for managing routes and widget navigation
class Routes {
  // Defining route names as constants to avoid typos
  static const String settings = '/settings';
  static const String page1 = '/page1';
  static const String page2 = '/todo';

  // A map of routes and their associated WidgetBuilders
  static Map<String, WidgetBuilder> routes = {
    // Mapping the 'settings' route to the Settings page with the route name as the title
    settings: (context) => Settings(title: settings.toString()),
  };

  // A static list of widgets representing different screens or UI components
  static const List<Widget> list = <Widget>[
    Settings(title: "title"), // A Settings widget with a title "title"
    Page1(), // An instance of the Page1 widget
    Todo(), // An instance of the Todo widget
  ];
}
