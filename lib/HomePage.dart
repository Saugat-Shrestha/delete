
import 'package:delete/Features/pages/home/ui/Home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBar = 0;

  void _barSelect(int index) {
    setState(() {
      _selectedBar = index;
    });
  }

  final List<Widget> _children = [
    Home(),
    Text("cs"),
    Text("sfsd"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedBar],
      bottomNavigationBar: Theme(
        data: ThemeData(),
        child: BottomNavigationBar(
          onTap: _barSelect,
          currentIndex: _selectedBar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Card",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "Wealth",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: "Profile",
            // ),
          ],
        ),
      ),
    );
  }
}
