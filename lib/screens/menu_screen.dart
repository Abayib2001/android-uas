import 'package:flutter/material.dart';
import 'package:news_app_2010020007/screens/automotive_screen.dart';
import 'package:news_app_2010020007/screens/sport_screen.dart';
import 'package:news_app_2010020007/screens/profile_screen.dart'; // Import halaman profil

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Aplikasi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Informasi Umum",
            style: TextStyle(
              color: Colors.cyan,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AutomotiveNewsScreen()),
                  );
                },
                child: Container(
                  width: 170,
                  height: 150,
                  color: Colors.deepPurple,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_taxi_rounded,
                        size: 120,
                        color: Colors.white,
                      ),
                      Text(
                        'Otomotive',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SportsScreen()),
                  );
                },
                child: Container(
                  width: 170,
                  height: 150,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sports_soccer,
                        size: 120,
                        color: Colors.white,
                      ),
                      Text(
                        'Sport',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProfileScreen()), // Gunakan ProfileScreen di sini
                  );
                },
                child: Container(
                  width: 170,
                  height: 150,
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 120,
                        color: Colors.white,
                      ),
                      Text(
                        'Profil',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20),
              // Container untuk placeholder, sesuaikan dengan kebutuhan Anda.
              Container(
                width: 170,
                height: 150,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.monetization_on_outlined,
                      size: 120,
                      color: Colors.white,
                    ),
                    Opacity(opacity: 0.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
