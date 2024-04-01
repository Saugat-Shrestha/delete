import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("hi, zullani"),
          Text("\$4,090.00"),
          Text("Current balance"),
        ],
      ),
    );
  }
}
