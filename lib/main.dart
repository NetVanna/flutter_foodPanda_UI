import 'package:flutter/material.dart';
import 'package:food_panda/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Roboto"),
      darkTheme: ThemeData(fontFamily: "Roboto"),
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
