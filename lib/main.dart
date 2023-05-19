import 'package:flutter/material.dart';
import 'package:naviandroute/Pages/Page1.dart';
import 'package:naviandroute/Pages/Routes.dart';
import 'package:naviandroute/Pages/Settings.dart';
import 'package:naviandroute/widgets/redirectButton.dart';

import 'Pages/Page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.indigo[400])),
      routes: Routes.routes,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Settings(title: "title"),
              ));
          break;
        case 1:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Page1()));
          break;
        case 2:
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Page2()));
          break;
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.last_page_rounded), label: "Page 1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined), label: "Page 2"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amberAccent,
        onTap: onItemTapped,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const RedirectButton(title: "2"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
