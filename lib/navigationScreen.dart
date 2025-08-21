import 'package:flutter/material.dart';

class Navigationscreen extends StatelessWidget {
  const Navigationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('NavigationScreen'),
      ),
      body: Center(
        child: Text(
          'welcome to Navigation screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
