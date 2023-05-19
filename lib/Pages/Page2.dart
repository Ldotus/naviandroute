import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(children: [
        Row(
          children: [
            Text("Name"),
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      shape:
                          MaterialStatePropertyAll(BeveledRectangleBorder())),
                  child: Text("EBtn1"),
                ),
                ElevatedButton(onPressed: null, child: Text("EBtn2"))
              ],
            )
          ],
        )
      ]),
    );
  }
}
