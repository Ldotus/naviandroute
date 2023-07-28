import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersistentMem extends StatefulWidget {
  const PersistentMem({super.key});

  @override
  State<PersistentMem> createState() => _PersistentMemState();
}

class _PersistentMemState extends State<PersistentMem> {
  //create instance of shared preference,
  //using future as it is async
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  late Future<int> _counter;

  Future<void> _incrementCounter() async {
    final SharedPreferences prefs = await _pref;
    final int counter = (prefs.getInt('counter') ?? 0) + 1;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
