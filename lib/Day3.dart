import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  const Day3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Profile Card',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/img.jpeg'),
              radius: (60),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Aziz ur Rehman',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
              letterSpacing: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            // color: Colors.white,
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text('+92 335 0778877'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text('Azizrehman7500@gmail.com'),
            ),
          ),
        ],
      ),
    );
  }
}
