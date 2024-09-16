import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

//Navigation
void main() {
  runApp(IntroApp()); // Wrap your app),
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    var height=MediaQuery.of(context).size.height;
    var wight =MediaQuery.of(context).size.width;
    var orientation =MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: false,
      ),

      //AspectRatio//


      // body: Container(
      //   color: Colors.orangeAccent,
      //   width: double.infinity,
      //   height: 400,
      //   alignment: Alignment.center,
      //   child: AspectRatio(
      //     aspectRatio: 16/9,
      //     child: Container(
      //       color: Colors.green,
      //     ),
      //   ),
      // ),

      //FractionallySizedBox


      // body: Center(
      //   child: FractionallySizedBox(
      //     widthFactor: .7,
      //     heightFactor: .3,
      //     child: Container(
      //       color: Colors.orangeAccent,
      //     ),
      //   )
      // ),

      //LayoutBuilder//

      // body: LayoutBuilder(
      //   builder: (BuildContext context,BoxConstraints constraints){
      //     if(constraints.maxWidth>600){
      //       return Container(height: 400,width: 400,color: Colors.blueGrey,);
      //     }else{
      //       return Container(height: 200,width: 200,color: Colors.redAccent);
      //     }
      //   },
      // ),

      //SingleChildScrollview//

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,//(Column hole)
      //   //scrollDirection: Axis.horizontal,//(Row hole )
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Container(height: 200,width: 200,color: Colors.redAccent,),
      //       Container(height: 200,width: 200,color: Colors.blueGrey,),
      //       Container(height: 200,width: 200,color: Colors.green,),
      //       Container(height: 200,width: 200,color: Colors.brown,),
      //       Container(height: 200,width: 200,color: Colors.white,),
      //       Container(height: 200,width: 200,color: Colors.redAccent,),
      //       Container(height: 200,width: 200,color: Colors.blueGrey,),
      //     ],
      //   ),
      // ),

      //Expanded//


      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         color: Colors.green,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         color: Colors.orangeAccent,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 5,
      //       child: Container(
      //         color: Colors.redAccent,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 9,
      //       child: Container(
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 12,
      //       child: Container(
      //         color: Colors.pinkAccent,
      //       ),
      //     ),
      //   ],
      // ),

      //Flexible//


      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Flexible(
      //       fit: FlexFit.loose,
      //       flex: 23,
      //       child: Container(
      //        color: Colors.pinkAccent,
      //     ),
      //     ),
      //     Flexible(
      //       fit: FlexFit.loose,
      //       flex: 20,
      //       child: Container(
      //         color: Colors.green,
      //       ),
      //     )
      //   ],
      // ),


      //MediaQuery//


      // body: Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('Screen Height=${height}'),
      //       Text('Screen Width=${wight}'),
      //       Text('Screen Orientation=${orientation}'),
      //     ],
      //   ),
      // ),

    );
  }
}
