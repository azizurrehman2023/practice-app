import 'package:flutter/material.dart';

class Day14 extends StatefulWidget {
  const Day14({super.key});

  @override
  State<Day14> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<Day14> {
  final TextEditingController _controller =
      TextEditingController(); // This is a box that stores the text of the effect it will have.

  List<Map<String, dynamic>> tasks =
      []; // This is a list where we keep all our tasks (work). Each task has a "title" and a "done" (true/false).,

  void _addTask() {
    // This is a function that adds a new task to the list.,
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      tasks.add({"title": _controller.text, "done": false});
      _controller.clear();
    });
  }

  void _toggleDone(int index, bool? value) {
    // This function makes the task complete or incomplete (for checkbox),
    setState(() {
      tasks[index]["done"] = value ?? false;
    });
  }

  void _deleteTask(int index) {
    // This function deletes the task.
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 14: To-Do App")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Enter new task...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addTask,
                  child: const Text("Add"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(tasks[index]["title"]),
                  onDismissed: (_) => _deleteTask(index),
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  child: CheckboxListTile(
                    title: Text(
                      tasks[index]["title"],
                      style: TextStyle(
                        decoration: tasks[index]["done"]
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    value: tasks[index]["done"],
                    onChanged: (value) => _toggleDone(index, value),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
