
import 'package:flutter/material.dart';
import 'package:food_panda/constants/colors.dart';

import 'location_access_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          scale: 3,
        ),
      ),
    );
  }

  @override
  void initState() {
    splashScreen();
  }

  Future splashScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LocationAccessScreen(),
      ),
    );
  }
}
