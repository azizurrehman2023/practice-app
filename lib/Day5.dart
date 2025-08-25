import 'dart:ffi';

import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 5: ListView Example'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            // person card
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.blueGrey.shade500,
                ),
                title: Text('AZIZ UR REHMAN'),
                subtitle: Text('Flutter Developer'),
              ),
            ),
            // email card
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blueGrey.shade500,
                ),
                title: Text('fluxtonx@321.com'),
              ),
            ),
            //contact card
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blueGrey.shade500,
                ),
                title: Text('+92 300 0990887'),
              ),
            ),
            // location card
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.blueGrey.shade500,
                ),
                title: Text('Islamabad,Pakistan'),
              ),
            ),
            // Extra items for scrolling demo
            for (int i = 1; i <= 15; i++)
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Colors.blueGrey.shade500,
                  ),
                  title: Text('List item $i'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
