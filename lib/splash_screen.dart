import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import your LoginScreen here

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to Login Screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the splash screen background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to SmartFarm',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Customize the color of the loading bar
              backgroundColor: Colors.grey[200], // Set background color
            ),
          ],
        ),
      ),
    );
  }
}
