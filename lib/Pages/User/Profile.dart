import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:naviandroute/widgets/CustomDrawer.dart';

class Profile extends StatelessWidget {
  final String name;
  const Profile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome $name")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Dashboard"),
          onPressed: () {
            GoRouter.of(context).go("/");
          },
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
