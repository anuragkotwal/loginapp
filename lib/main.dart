import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:nanoid/nanoid.dart';
import 'RouteGenerator.dart';

var id = nanoid(10);
final per_id = id;
void main() {
  print(id);
  print(per_id);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
