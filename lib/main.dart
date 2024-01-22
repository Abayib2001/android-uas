import 'package:flutter/material.dart';
import 'package:news_app_2010020007/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APLIKASI AKBAR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => SplashScreen(),
      },
      initialRoute: '/',
    );
  }
}
