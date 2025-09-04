import 'package:flutter/material.dart';
import 'package:newapps/Day0.dart';
import 'package:newapps/Day1.dart';
import 'package:newapps/Day10.dart';
import 'package:newapps/Day11.dart';
import 'package:newapps/Day12.dart';
import 'package:newapps/Day13.dart';
import 'package:newapps/Day14.dart';
import 'package:newapps/Day15.dart';
import 'package:newapps/Day16.dart';
import 'package:newapps/Day17.dart';
import 'package:newapps/Day18.dart';
import 'package:newapps/Day2.dart';
import 'package:newapps/Day3.dart';
import 'package:newapps/Day4.dart';
import 'package:newapps/Day5.dart';
import 'package:newapps/Day6.dart';
import 'package:newapps/Day8.dart';
import 'package:newapps/Day9.dart';
import 'package:newapps/NotesApp.dart';
import 'package:newapps/blackScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Day18(),
    );
  }
}
