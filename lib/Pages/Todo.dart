// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../widgets/CustomDrawer.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo"),
        backgroundColor: Colors.amber,
      ),
      body: Card(
        color: Colors.blueGrey,
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
              const Expanded(
                child: TextField(),
              ),
              Radio(
                value: false,
                groupValue: true,
                onChanged: (value) => true,
              ),
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
