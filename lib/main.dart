import 'package:delete/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FireFly());
}

class FireFly extends StatelessWidget {
  const FireFly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}