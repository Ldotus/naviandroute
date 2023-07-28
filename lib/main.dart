import 'package:flutter/material.dart';
import 'package:naviandroute/Pages/Introscreen/ListPageViewlModel.dart';
import 'package:naviandroute/Pages/Page1.dart';
import 'package:naviandroute/Pages/Routes.dart';
import 'package:naviandroute/Pages/Settings.dart';
import 'package:naviandroute/widgets/redirectButton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'Pages/Todo.dart';

void main() {
  runApp(const MyApp());
}

// MyApp class - The root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // Defining the theme for the application
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.indigo[400],
        ),
      ),
      // Defining the routes for the application
      routes: Routes.routes,
      // Setting the initial page for the application using listPageViewModel
      home: ListPageViewModel().getPage(),
    );
  }
}

// MyHomePage class - A StatefulWidget with a counter
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// _MyHomePageState class - State class for MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int selectedIndex = 0;

  // Function to handle bottom navigation bar item taps
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      switch (index) {
        case 0:
          // Navigating to Settings page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Settings(title: "title"),
            ),
          );
          break;
        case 1:
          // Navigating to Page1

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Page1()),
          );
          break;
        case 2:
          // Navigating to Page2
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Todo()),
          );
          break;
      }
    });
  }

  // Function to increment the counter
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
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // Settings icon and label
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          // Page 1 icon and label
          BottomNavigationBarItem(
              icon: Icon(Icons.last_page_rounded), label: "Page 1"),
          // Page 2 icon and label
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
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Custom RedirectButton widget
            const RedirectButton(title: "2"),
          ],
        ),
      ),
      // Floating Action Button to pop the current route
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
