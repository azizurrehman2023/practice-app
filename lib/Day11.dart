import 'package:flutter/material.dart';

class Day11 extends StatefulWidget {
  const Day11({super.key});

  @override
  State<Day11> createState() => _Day11State();
}

int Counter = 0;

class _Day11State extends State<Day11> {
  void increment() {
    setState(() {
      Counter++;
    });
  }

  void Decrement() {
    setState(() {
      Counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 11 - Counter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Counter Value:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            '$Counter',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: increment,
                child: Text(
                  'increment',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: Decrement,
                child: Text(
                  'Decrement',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
