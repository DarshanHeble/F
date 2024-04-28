import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app/const/constant.dart';
import 'package:app/screens/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: "assets/Bell_logo.png",
      splashIconSize: double.tryParse("400"),
      duration: 200,
      backgroundColor: black,
      nextScreen: const MainScreen(),
    );
  }
}
