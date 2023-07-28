import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:naviandroute/Pages/LoginPage.dart';
import 'package:naviandroute/Storage/PersistentMem.dart';
import 'package:naviandroute/main.dart';

// Model class to represent list items
@immutable
class listView {
  final String title;
  final String description;
  final String imageUrl;

  const listView({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

// ListPageViewModel class to build an introduction screen
class ListPageViewModel extends StatefulWidget {
  @override
  _ListPageViewModelState createState() => _ListPageViewModelState();
}

class _ListPageViewModelState extends State<ListPageViewModel> {
  bool introComplete = false;
  var appName = "Remme: Remember me";

  void setIntroComplete() {
    setState(() {
      introComplete = true;
    });
  }

  // List of PageViewModel to display introduction pages
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Page 1",
      body: "Page 1 - Description",
      image: const Center(
        child: Icon(Icons.waving_hand, size: 50),
      ),
    ),
    PageViewModel(
      title: "Page 2",
      body: "Page 2 - Description ",
      image: const Center(
        child: Icon(
          Icons.ramen_dining,
          size: 50,
        ),
      ),
    ),
    PageViewModel(
      title: "Page 1",
      body: "Page 1 - Description",
      image: const Center(
        child: Icon(Icons.waving_hand, size: 50),
      ),
    ),
    PageViewModel(
      title: "Page 1",
      body: "Page 1 - Description",
      image: const Center(
        child: Icon(Icons.waving_hand, size: 50),
      ),
    ),
    PageViewModel(
      title: "Page 1",
      body: "Page 1 - Description",
      image: const Center(
        child: Icon(Icons.waving_hand, size: 50),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    if (introComplete) {
      return const LoginPage();
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: IntroductionScreen(
          pages: pages,
          onDone: () {
            setIntroComplete();

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          showSkipButton: true,
          showNextButton: false,
          skip: const Text("Skip"),
          done: const Text("Done"),
        ),
      );
    }
  }
}
