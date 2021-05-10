import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'Details.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings seetings) {
    switch (seetings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => LoginPage());
      case '/second':
        return MaterialPageRoute(builder: (context) => Details());
    }
  }
}