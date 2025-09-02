import 'package:flutter/material.dart';

class Day13 extends StatefulWidget {
  const Day13({super.key});

  @override
  State<Day13> createState() => _Day13State();
}

class _Day13State extends State<Day13> {
  String input = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Text(
          'Calculator UI',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  input,
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                calcButton("7"),
                calcButton("8"),
                calcButton("9"),
                calcButton("÷"),
                calcButton("4"),
                calcButton("5"),
                calcButton("6"),
                calcButton("x"),
                calcButton("1"),
                calcButton("2"),
                calcButton("3"),
                calcButton("-"),
                calcButton("0"),
                calcButton("C"),
                calcButton("="),
                calcButton("+"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget calcButton(String text) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            input = text;
          },
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
