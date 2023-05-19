import 'package:flutter/material.dart';
import 'package:naviandroute/Pages/Page2.dart';
import 'package:naviandroute/Pages/Routes.dart';
import 'package:naviandroute/Pages/Settings.dart';
import 'package:naviandroute/main.dart';

class RedirectButton extends StatefulWidget {
  const RedirectButton({super.key, required this.title});
  final String title;
  @override
  State<RedirectButton> createState() => _RedirectButtonState();
}

class _RedirectButtonState extends State<RedirectButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Settings(
                    title: "title",
                  )),
        );
      },
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.green)),
      child: const Text("Redirect"),
    );
  }
}
