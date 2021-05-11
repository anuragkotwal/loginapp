import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'Details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginPage(),
      //   '/second': (context) => SecondScreen(),
      // }
    );
  }
}
