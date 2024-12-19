import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Import your SplashScreen here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EasyFood',
      home: SplashScreen(), // Set SplashScreen as the initial screen
    );
  }
}
