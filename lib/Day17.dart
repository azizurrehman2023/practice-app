import 'package:flutter/material.dart';

class Day17 extends StatelessWidget {
  const Day17({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 17:Drawer Menu'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Aziz ur rehman'),
              accountEmail: Text("aziz@gamil.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/img.jpeg"),
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('clicked home'),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Clicked Settings'),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('clicked Logout')));
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text('Swipe from left or click menu icon to open Drawer'),
      ),
    );
  }
}
