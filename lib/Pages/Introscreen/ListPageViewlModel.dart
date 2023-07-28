import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:naviandroute/Storage/PersistentMem.dart';
import 'package:naviandroute/main.dart';

@immutable
class listView {
  final String title;
  final String description;
  final String imageUrl;

  const listView(
      {required this.title, required this.description, required this.imageUrl});
}

class ListPageViewModel extends StatelessWidget {
  bool introComplete = false;
  var appName = "Remme: Remember me";
  List<PageViewModel> pages = [
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
  Widget getPage() {
    if (introComplete) {
      return const MyHomePage(title: "title");
    } else {
      return ListPageViewModel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: IntroductionScreen(
        pages: pages,
        onDone: () {
          introComplete = true;

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyHomePage(title: "title")));
        },
        showSkipButton: true,
        showNextButton: false,
        skip: const Text("Skip"),
        done: const Text("Done"),
      ),
    );
  }
}
