import 'package:flutter/material.dart';

class Day12 extends StatefulWidget {
  const Day12({super.key});

  @override
  State<Day12> createState() => _Day12State();
}

class _Day12State extends State<Day12> {
  List<Map<String, dynamic>> toDoList = [
    {"title": "Flutter Practice", "done": false},
    {"title": "Read Book", "done": false},
    {"title": "Gym Workout", "done": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To-Do List',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(
              toDoList[index]['title'],
              style: TextStyle(
                  fontSize: 18,
                  decoration: toDoList[index]['done']
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
            value: toDoList[index]["done"],
            onChanged: (value) {
              setState(
                () {
                  toDoList[index]["done"] = value!;
                },
              );
            },
          );
        },
      ),
    );
  }
}
