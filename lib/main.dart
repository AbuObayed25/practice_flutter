import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:practice_2/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
        enabled: true,
        builder: (context) => const CounterApp()
    ),
  ); // Wrap your app
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
