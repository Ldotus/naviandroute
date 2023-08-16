// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:naviandroute/Utility/NavigateTo.dart';

import 'DrawerFooter.dart';

class CustomDrawer extends StatelessWidget {
  // Remove unused argument super.key in the constructor
  const CustomDrawer({super.key});

  final String name = "Liam";

  @override
  Widget build(BuildContext context) {
    String email = "$name@jaja.com";
    return Drawer(
      // Consider using a more flexible width, e.g., width: MediaQuery.of(context).size.width * 0.8,
      width: MediaQuery.of(context).size.width * 0.8,
      backgroundColor: Colors.amber,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    Text(name),
                  ],
                ),
              ],
            ),
            currentAccountPictureSize: const Size(100, 200),
            accountEmail: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(email),
                const CircleAvatar(
                  // Consider using a more meaningful icon or standard icons
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              // Reuse the same navigation call
              NavigateTo.navigateToDashboard(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.pages),
            title: const Text("Page1"),
            onTap: () {
              NavigateTo.navigateToPage1(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              NavigateTo.navigateToSettingsPage(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.hourglass_empty),
            title: const Text("Blank Page"),
            onTap: () {
              NavigateTo.navigateToTodoPage(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.mic_external_on_outlined),
            title: const Text("Mixer"),
            onTap: () {
              NavigateTo.navigateToMixer(context);
            },
          ),
          // Remove GestureDetector, it's not needed here
          ConstrainedBox(
            constraints:
                const BoxConstraints(minHeight: 80.0, maxHeight: 410.0),
            child: DrawerFooter(),
          ),
        ],
      ),
    );
  }
}
