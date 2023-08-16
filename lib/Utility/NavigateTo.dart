import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../Pages/LoginPage.dart';
import '../Pages/Page1.dart';
import '../Pages/Settings.dart';
import '../Pages/Todo.dart';
import '../Pages/User/Profile.dart';
import '../Pages/Mixer.dart';

class NavigateTo {
  static final GoRouter router =
      GoRouter(initialLocation: "/LoginPage", routes: [
    GoRoute(
        path: "/",
        builder: (context, state) => const Profile(
              name: "Ldot",
            )),
    GoRoute(path: "/LoginPage", builder: (context, state) => const LoginPage()),
    GoRoute(path: "/Todo", builder: (context, state) => const Todo()),
    GoRoute(path: "/Page1", builder: (context, state) => const Page1()),
    GoRoute(path: "/Mixer", builder: (context, state) => const Mixer()),
    GoRoute(
        path: "/Settings",
        builder: (context, state) => const Settings(
              title: "Settings payuj",
            )),
  ]);
  static void navigateToDashboard(BuildContext context) {
    GoRouter.of(context).go("/");
  }

  static void navigateToLoginPage(BuildContext context) {
    GoRouter.of(context).go("/LoginPage");
  }

  static void navigateToTodoPage(BuildContext context) {
    GoRouter.of(context).go("/Todo");
  }

  static void navigateToPage1(BuildContext context) {
    GoRouter.of(context).go("/Page1");
  }

  static void navigateToSettingsPage(BuildContext context) {
    GoRouter.of(context).go("/Settings");
  }

  static void navigateToMixer(BuildContext context) {
    GoRouter.of(context).go("/Mixer");
  }
}
