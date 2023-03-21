import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:okbaffordables/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: SizedBox(
            height: 250,
            width: 250,
            child: Image.asset("assets/images/splashLogo.jpg")),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        defaultNextScreen: const Welcome(),
        setNextScreenAsyncCallback: () async {
          final prefs = await SharedPreferences.getInstance();
          final bool? isLoggedIn = prefs.getBool('isLoggedIn');
          if (isLoggedIn == true) {
            return const Welcome();
          } else {
            return const Welcome();
          }
        });
  }
}
