import 'package:flutter/material.dart';

class Day16 extends StatefulWidget {
  const Day16({super.key});

  @override
  State<Day16> createState() => _Day16State();
}

class _Day16State extends State<Day16> {
  int _currentIndex = 0; // abhi kaunsa tab select hai

  // 3 screens ki list
  final List<Widget> _screens = [
    Center(child: Text("Home Screen", style: TextStyle(fontSize: 25))),
    Center(child: Text("Search Screen", style: TextStyle(fontSize: 25))),
    Center(child: Text("Profile Screen", style: TextStyle(fontSize: 25))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: _screens[_currentIndex], // abhi select screen show hogi
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // kaunsa tab active hai
        onTap: (index) {
          setState(
            () {
              _currentIndex = index; // jab button dabao tab index update
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
