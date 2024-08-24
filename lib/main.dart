// // Current SDK version: 3.22.1
// import 'package:flutter/material.dart';
//
// // TextField
//
// void main() {
//   runApp(IntroApp());
// }
//
// class IntroApp extends StatelessWidget {
//   const IntroApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//         home: Home(),
//         theme: ThemeData(
//           brightness: Brightness.light,
//           appBarTheme: AppBarTheme(
//               backgroundColor: Colors.orange,
//               titleTextStyle: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.4)),
//         ));
//   }
// }
//
// class Home extends StatelessWidget {
//   Home({super.key});
//
//   MySnackBar(message, context) {
//     return ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text(message)));
//   }
//
//   final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
//       backgroundColor: Colors.orange,
//       foregroundColor: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       minimumSize: Size( double.infinity,60) // You can adjust the radius
//   );
//
//   MyAlertDialog(context) {
//     return showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return Expanded(
//               child: AlertDialog(
//                 title: Text("Alert!"),
//                 content: Text("Do you want to delete"),
//                 actions: [
//                   TextButton(
//                       onPressed: () {
//                         MySnackBar('Delete Success', context);
//                         Navigator.of(context).pop();
//                       },
//                       child: Text('Yes')),
//                   TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: Text('No'))
//                 ],
//               ));
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       // body: Center(
//       //   child: ElevatedButton(
//       //     child: Text("Here you go"),
//       //     onPressed: () {
//       //       MyAlertDialog(context);
//       //     },
//       //   ),
//       // ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "First name",
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Last name",
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: "Email",
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: ElevatedButton(onPressed: (){},child: Text("Submit"),style: buttonStyle,),
//           ),
//         ],
//       ),
//     );
//   }
// }
// Current SDK version: 3.22.1
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// TextField

void main() {
  runApp(DevicePreview(
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
              backgroundColor: Colors.orange,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4)),
        ));
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minimumSize: Size( double.infinity,60) // You can adjust the radius
  );

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text("Alert!"),
                content: Text("Do you want to delete"),
                actions: [
                  TextButton(
                      onPressed: () {
                        MySnackBar('Delete Success', context);
                        Navigator.of(context).pop();
                      },
                      child: Text('Yes')),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('No'))
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Here you go"),
      //     onPressed: () {
      //       MyAlertDialog(context);
      //     },
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First name",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Last name",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(onPressed: (){},child: Text("Submit"),style: buttonStyle,),
          ),
        ],
      ),
    );
  }
}