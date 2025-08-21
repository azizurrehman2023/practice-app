import 'package:flutter/material.dart';
import 'package:newapps/navigationScreen.dart';

class Blackscreen extends StatelessWidget {
  const Blackscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'my first screen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Navigationscreen(),
              ),
            );
          },
          child: const Text('go to navigationScreen'),
        ),
      ),
    );
  }
}
