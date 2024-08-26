// Current SDK version: 3.22.1

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:practice_2/CallFragment.dart';
import 'package:practice_2/CameraFragment.dart';
import 'package:practice_2/HomeFragment.dart';
import 'package:practice_2/MessageFragment.dart';
import 'package:practice_2/ProfileFragment.dart';
import 'package:practice_2/SearchFragment.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => IntroApp(), // Wrap your app
    ),
  );
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4)
          ),
          tabBarTheme: TabBarTheme(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black54
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.yellow,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            showSelectedLabels: true,
          )),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.green,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            showSelectedLabels: true,
          )),
      themeMode: ThemeMode.system,
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  MySnackBar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home),text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.message),text: 'Message',
              ),
              Tab(
                icon: Icon(Icons.search),text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.call),text: 'Call',
              ),
              Tab(
                icon: Icon(Icons.camera_alt_outlined),text: 'Camera',
              ),
              Tab(
                icon: Icon(Icons.person),text: 'Profile',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeFragment(),
            MessageFragment(),
            SearchFragment(),
            CallFragment(),
            CameraFragment(),
            Profilefragment(),
          ],
        ),
      ),
    );
  }
}
