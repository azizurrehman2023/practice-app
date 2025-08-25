import 'package:flutter/material.dart';

class Day6 extends StatelessWidget {
  const Day6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMXKYSdDfA7sAJ-uaA28ahnoGk8aHC-13NEQ&s'),
              radius: (60),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Aziz ur Rehman',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          Text(
            'Flutter Developer | Trader',
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            indent: 50,
            endIndent: 50,
          ),
          SizedBox(
            height: 20,
          ),
          // contact info card
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.blueGrey.shade600,
              ),
              title: Text('+92 335 0778877'),
            ),
          ),
          // email card
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.blueGrey.shade600,
              ),
              title: Text('fluxtonx@456.com'),
            ),
          ),
          // location card
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
