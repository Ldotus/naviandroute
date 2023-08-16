import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(), // Optional divider
        ListTile(
          tileColor: Colors.deepPurpleAccent,
          title: const Text('Logout'),
          onTap: () {
            // Add logic to navigate back to the login page
            GoRouter.of(context).go("/LoginPage");
          },
        ),
      ],
    );
  }
}
