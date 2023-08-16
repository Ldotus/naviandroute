import 'package:flutter/material.dart';
import 'Utility/NavigateTo.dart';

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
        routerConfig: NavigateTo.router,
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
}
