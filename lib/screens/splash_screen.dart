import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app_2010020007/screens/menu_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tunggu 2 detik, lalu pindah ke layar menu.
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MenuScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash_image.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'TUGAS UAS AKBAR',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
