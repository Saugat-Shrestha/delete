import 'package:delete/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const delete());
}

class delete extends StatelessWidget {
  const delete({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
