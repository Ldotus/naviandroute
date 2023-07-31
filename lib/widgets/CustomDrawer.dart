import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final String name = "Liam";

  @override
  Widget build(BuildContext context) {
    String email = "$name@jaja.com";
    return Drawer(
      backgroundColor: Colors.amber,
      width: 200,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text(name),
              accountEmail: Text(email),
              currentAccountPicture: const Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: CircleAvatar(
                  child: Icon(Icons.person_4),
                ),
              )),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              GoRouter.of(context).go("/");
            },
          ),
          ListTile(
            leading: const Icon(Icons.pages),
            title: const Text("Page1"),
            onTap: () {
              GoRouter.of(context).go("/Page1");
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              GoRouter.of(context).go("/Settings");
            },
          ),
          ListTile(
            leading: const Icon(Icons.hourglass_empty),
            title: const Text("Blank Page"),
            onTap: () {
              GoRouter.of(context).go("/Page1");
            },
          ),
        ],
      ),
    );
  }
}
