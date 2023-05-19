import 'package:flutter/material.dart';
import 'package:naviandroute/widgets/redirectButton.dart';
import 'dart:core';

class Settings extends StatefulWidget {
  const Settings({super.key, required this.title});

  final String title;

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Column(
        children: [
          SizedBox(
            child: Card(
              borderOnForeground: true,
              child: Column(
                children: [
                  RedirectButton(
                    title: "t",
                  ),
                  Text("data"),
                  Text("data"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
