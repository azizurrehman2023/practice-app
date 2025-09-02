import 'package:flutter/material.dart';

class Day0 extends StatelessWidget {
  Day0({super.key});
  List<Map<String, dynamic>> tasks = [
    {"title": "Flutter Practice", "done": false}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Ui'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Text('pakistan');
        },
      ),
    );
  }
}
