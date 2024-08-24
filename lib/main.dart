// Current SDK version: 3.22.1
//json array,listview builder,gesture detector,list item,on tap/on press
//json array,Gridview builder,gesture detector,Grid item,on tap/on press
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// TextField

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
              backgroundColor: Colors.orange,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.4)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.orange,
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

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      minimumSize: Size(double.infinity, 60) // You can adjust the radius
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
          )
          );
        }
        );
  }

  var MyItems = [
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/025/282/026/small/stock-of-mix-a-cup-coffee-latte-more-motive-top-view-foodgraphy-generative-ai-photo.jpg",
      "title": "coffee1"
    },
    {
      "img":
          "https://media.istockphoto.com/id/1496859162/photo/coffee-cup-latte-art-on-wooden-table-cafe-menu.jpg?b=1&s=612x612&w=0&k=20&c=4AEknyzAZUhnW5tLVEhNimk_fO3fjaYYumU0mW3iKqc=",
      "title": "coffee2"
    },
    {
      "img":
          "https://t4.ftcdn.net/jpg/02/60/29/13/360_F_260291333_ksrk3hxOJZosQlZdxUHYdda4OG7bvAFW.jpg",
      "title": "coffee3"
    },
    {
      "img":
          "https://www.shutterstock.com/image-illustration/spilled-coffee-cup-beans-no-260nw-2434839009.jpg",
      "title": "coffee4"
    },
    {
      "img":
          "https://static.vecteezy.com/system/resources/thumbnails/025/282/026/small/stock-of-mix-a-cup-coffee-latte-more-motive-top-view-foodgraphy-generative-ai-photo.jpg",
      "title": "coffee5"
    },
    {
      "img":
          "https://media.istockphoto.com/id/1496859162/photo/coffee-cup-latte-art-on-wooden-table-cafe-menu.jpg?b=1&s=612x612&w=0&k=20&c=4AEknyzAZUhnW5tLVEhNimk_fO3fjaYYumU0mW3iKqc=",
      "title": "coffee6"
    },
    {
      "img":
          "https://media.istockphoto.com/id/1496859162/photo/coffee-cup-latte-art-on-wooden-table-cafe-menu.jpg?b=1&s=612x612&w=0&k=20&c=4AEknyzAZUhnW5tLVEhNimk_fO3fjaYYumU0mW3iKqc=",
      "title": "coffee7"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Home"),
        toolbarHeight: 60,
      ),

      // body:ListView.builder(     //Listview Builder
      //   itemCount: MyItems.length,
      //   itemBuilder: (context,index){
      //     return GestureDetector(
      //       onTap: (){MySnackBar(context,MyItems[index]["title"]);},
      //       child: Container(
      //         margin: EdgeInsets.all(10),
      //         width: double.infinity,
      //         height: 220,
      //         child: Image.network(MyItems[index]["img"]!,fit: BoxFit.fill,),
      //       ),
      //     );
      //   },
      // ) ,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 5,
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          childAspectRatio: 1.3,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              MySnackBar(context, MyItems[index]["title"]);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 220,
              child: Image.network(
                MyItems[index]["img"]!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        itemCount: MyItems.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.messenger), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_up), label: "Viral"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
