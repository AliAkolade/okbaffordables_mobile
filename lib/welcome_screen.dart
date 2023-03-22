import "package:flutter/material.dart";
import "package:okbaffordables/utils.dart";

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }
}

class WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Text("Buy your dream house with comfort and ease",
          textAlign: TextAlign.center, style: OKBStyles.titleText),
      Text(
          "We are committed to providing and ensuring a Smooth and Hassle-Free Real Estate Experience",
          textAlign: TextAlign.center,
          style: OKBStyles.bodyText)
    ])));
  }
}
