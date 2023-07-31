import 'package:flutter/material.dart';
import 'package:naviandroute/Pages/Settings.dart';

class RedirectButton extends StatefulWidget {
  const RedirectButton({Key? key, required this.title}) : super(key: key);

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
            ),
          ),
        );
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
      child: const Text(''),
    );
  }
}
