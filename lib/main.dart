import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
//Navigation
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
      home: HomeActivity(),
      // Main screen of the app
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blue),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.green),
        ),
      ),
      themeMode: ThemeMode.system,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: false,
      ),
     body: Center(
     //     child:Card(
     //       elevation: 50,
     //       color: Colors.orangeAccent,
     //       shadowColor: Colors.orangeAccent,
     //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
     //       child: SizedBox(
     //         height: 200,
     //         width: 200,
     //         child: Center(
     //           child: Text("This is card"),
     //         ),
     //       ),
     // ),
     //   child: CircularProgressIndicator(
     //     color: Colors.blueAccent,
     //   ),
       child: LinearProgressIndicator(
         minHeight: 4,
         backgroundColor: Colors.blueAccent,
         borderRadius: BorderRadius.circular(20),
       ),

     ),
    );
  }
}

