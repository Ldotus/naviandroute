import 'package:flutter/material.dart';
import 'package:naviandroute/widgets/CustomDrawer.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page1"),
        backgroundColor: Colors.red,
      ),
      body: Card(
        color: const Color.fromARGB(255, 13, 164, 239),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const IconButton(
                onPressed: null,
                icon: Icon(Icons.account_balance),
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(Icons.add_moderator_rounded),
              ),
              Radio(
                value: false,
                groupValue: true,
                onChanged: (value) => true,
              ),
              const Expanded(
                child: TextField(),
              ),
              Checkbox(
                value: isChecked,
                onChanged: (newValue) {
                  setState(() {
                    isChecked = newValue!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
