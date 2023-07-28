import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:naviandroute/Pages/Introscreen/ListPageViewlModel.dart';
import 'package:naviandroute/Pages/Page1.dart';
import 'package:naviandroute/Pages/Routes.dart';
import 'package:naviandroute/Pages/Settings.dart';
import 'package:naviandroute/widgets/redirectButton.dart';
import 'Pages/LoginPage.dart';
import 'Pages/Todo.dart';

void main() {
  runApp(MyApp());
}

// MyApp class - The root of the application
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        routerConfig: _router,
        // Defining the theme for the application
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.indigo[400],
          ),
        ));
  }

//Create a GoRouter config to store all the paths in and set initial path
  final GoRouter _router = GoRouter(initialLocation: "/LoginPage", routes: [
    GoRoute(path: "/", builder: (context, state) => const Todo()),
    GoRoute(path: "/LoginPage", builder: (context, state) => const LoginPage()),
    GoRoute(path: "/Todo", builder: (context, state) => const Todo()),
  ]);
}
