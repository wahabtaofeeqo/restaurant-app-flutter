import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/pages/details.dart';
import 'app/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cera",
        primaryColor: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      routes: {
        'home': (context) => Home(),
        'details': (context) => Details(),
      },
      home: App(),
    );
  }
}
