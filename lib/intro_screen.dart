import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:kalz_studio/firebaseAuthDemo.dart';

class IntroScreen extends StatelessWidget {
  final pageDecoration = PageDecoration(
    titleTextStyle:
    PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
    contentPadding: const EdgeInsets.all(10),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("assets/online_Ad.png"),
          title: "CONNECT ",
          body: "VIEW STORIES",
          footer: Text(
            "KARAN_SOLANKI",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/online_article.png"),
          title: "GET FAMOUS",
          body: "connect with each other",
          footer: Text(
            "KARAN_SOLANKI",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/website.png"),
          title: "Html & CSS",
          body: "Available in web UI",
          footer: Text(
            "KARAN_SOLANKI",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/shared_workspace.png"),
          title: "Workspace",
          body: "Want a workspace? Then check it out.",
          footer: Text(
            "KARAN_SOLANKI",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: Text(
          "Done",
          style: TextStyle(color: Colors.black),
        ),
        onDone: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FirebaseAuthDemo()));
        },
      ),
    );
  }
}
