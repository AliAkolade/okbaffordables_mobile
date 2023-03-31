import "package:flutter/material.dart";
import "package:flutter/scheduler.dart";
import "package:flutter_image_slideshow/flutter_image_slideshow.dart";
import "package:okbaffordables/projects_screen.dart";
import "package:okbaffordables/utils.dart";

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }
}

class WelcomeState extends State<Welcome> {
  double imageHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
          SizedBox(
              height: imageHeight,
              width: double.infinity,
              child: ImageSlideshow(
                  indicatorColor: OKBColors.mainColor,
                  autoPlayInterval: 2500,
                  isLoop: true,
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20)),
                        child: SizedBox.fromSize(
                            child: Image.asset('assets/images/welcomePic1.jpg',
                                fit: BoxFit.cover))),
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20)),
                        child: SizedBox.fromSize(
                            child: Image.asset('assets/images/welcomePic2.jpg',
                                fit: BoxFit.cover))),
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20)),
                        child: SizedBox.fromSize(
                            child: Image.asset('assets/images/welcomePic3.jpg',
                                fit: BoxFit.cover))),
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20)),
                        child: SizedBox.fromSize(
                            child: Image.asset('assets/images/welcomePic4.jpeg',
                                fit: BoxFit.cover))),
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20)),
                        child: SizedBox.fromSize(
                            child: Image.asset('assets/images/welcomePic5.jpg',
                                fit: BoxFit.cover))),
                    ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(20)),
                        child: SizedBox.fromSize(
                            child: Image.asset('assets/images/welcomePic6.jpeg',
                                fit: BoxFit.cover)))
                  ])),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 30),
                    Text("Buy your dream house with comfort and ease",
                        textAlign: TextAlign.center,
                        style: OKBStyles.titleText),
                    const SizedBox(height: 15),
                    Text(
                        "We are committed to providing and ensuring a smooth and hassle free real estate experience",
                        textAlign: TextAlign.center,
                        style: OKBStyles.bodyText),
                    const SizedBox(height: 15),
                    OKBFlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllProjects()),
                          );
                        },
                        padding: 60,
                        child: Text("Get Started", style: OKBStyles.boldText)),
                    const SizedBox(height: 0),
                    OKBTextButton(
                        onPressed: () {},
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: OKBStyles.bodyText,
                                text: 'Already have an account? ',
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'Log In',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: OKBColors.mainColor))
                                ]))),
                  ]))
        ])));
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      // Full screen width and height
      double height = MediaQuery.of(context).size.height;
      // Height (without SafeArea)
      var padding = MediaQuery.of(context).viewPadding;
      double fullHeight = height - padding.top - padding.bottom;
      setState(() {
        imageHeight = fullHeight * 0.6;
      });
    });
  }
}
