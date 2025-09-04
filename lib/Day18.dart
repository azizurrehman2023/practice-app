import 'package:flutter/material.dart';

class Day18 extends StatelessWidget {
  const Day18({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day1 18: Passing Data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(
                  name: "Aziz ur Rehman",
                  age: 25,
                ),
              ),
            );
          },
          child: const Text('click Go to second screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String name;
  final int age;
  const SecondScreen({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      ),
      body: Center(
        child: Text(
          "$name\nAge = $age",
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
