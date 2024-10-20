import 'package:flutter/material.dart';
import 'package:practice_2/ui/screen/splash_screen.dart';

import 'ui/utility/app_Colors.dart';

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({super.key});

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: _inputDecorationTheme(),
        elevatedButtonTheme:_elevatedButtonThemeData(),
      ),
      home: SplashScreen(),
    );
  }
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    hintStyle: TextStyle(
      fontWeight: FontWeight.w300,
    ),
    border: _InputBorder(),
    enabledBorder: _InputBorder(),
    errorBorder: _InputBorder(),
    focusedBorder: _InputBorder(),
  );
}

OutlineInputBorder _InputBorder() {
  return OutlineInputBorder(
      borderSide: BorderSide.none, borderRadius: BorderRadius.circular(8));
}

ElevatedButtonThemeData _elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.themeColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        fixedSize: Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
  );
}