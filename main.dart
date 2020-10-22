import 'package:animationApp/ui/api.dart';

import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "screen",
      routes: {
        "WatchApi": (context) => WatchApi(),
        "CarApi": (context) => CarApi(),
        "BikeApi": (context) => BikeApi(),
        "PhoneApi": (context) => PhoneApi(),
        "GunApi": (context) => GunApi(),
        "api": (context) => DataApi(),
        "screen": (context) => MyApp(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 8,
      navigateAfterSeconds: new DataApi(),
      title: new Text(
        'Welcome! Have a nice day',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
            decorationColor: Colors.black),
      ),
      image: new Image.asset('images/images.jpg'),
      //backgroundGradient: new LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      //onClick: () => print("Your storage"),
      loaderColor: Colors.green,
    );
  }
}
