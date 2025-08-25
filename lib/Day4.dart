import 'package:flutter/material.dart';

class Day4 extends StatelessWidget {
  const Day4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: (60),
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?cs=srgb&dl=pexels-bess-hamiti-83687-35537.jpg&fm=jpg"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Aziz ur Rehman',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.blueGrey.shade200,
            ),
          ),
          SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              color: Colors.blueGrey.shade200,
            ),
          ),
          // phone card
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.blueGrey,
              ),
              title: Text('+92 333 9557906'),
            ),
          ),
          // email card
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.blueGrey,
              ),
              title: Text('fluxtonx@123.com'),
            ),
          ),
          // Location card
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            child: ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.blueGrey,
              ),
              title: Text('Islamabad,Pakistan'),
            ),
          )
        ],
      ),
    );
  }
}
