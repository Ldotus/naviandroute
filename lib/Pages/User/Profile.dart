import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:naviandroute/widgets/CustomDrawer.dart';

class Profile extends StatelessWidget {
  final String name;

  const Profile({super.key, required this.name});

  void _navigateToDashboard(BuildContext context) {
    GoRouter.of(context).go("/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$name" "s Profile")),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 200,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(100), // Adjust for circular shape

                child: Image.asset(
                    'lib/assets/Rengoku.jpg'), // Replace with correct asset path
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              onPressed: () => _navigateToDashboard(context),
              child: const Text("Add"),
            ),
            ElevatedButton(
              onPressed: () => _navigateToDashboard(context),
              child: const Text("Edit"),
            ),
            ElevatedButton(
              onPressed: () => _navigateToDashboard(context),
              child: const Text("Remove"),
            )
          ]),
        ],
      ),
      drawer: const CustomDrawer(),
    );
  }
}
