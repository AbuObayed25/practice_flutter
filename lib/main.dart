import 'package:responsive_grid/responsive_grid.dart';
import 'package:flutter/material.dart';

//Navigation
void main() {
  runApp(const IntroApp()); // Wrap your app),
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(35.0),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         'Hello Flutter',
      //         style: HeadLine(context),
      //       )
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ResponsiveGridRow(children: [
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(10, 0),
                color: Colors.orangeAccent,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.green,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.purple,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(10, 0),
                color: Colors.orangeAccent,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.green,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.purple,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(10, 0),
                color: Colors.orangeAccent,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.green,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.purple,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(10, 0),
                color: Colors.orangeAccent,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.green,
                child: Text("lg : 12"),
              ),
            ),
            ResponsiveGridCol(
              xl: 3,
              lg: 3,
              md: 4,
              sm: 6,
              xs: 12,
              child: Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.purple,
                child: Text("lg : 12"),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
