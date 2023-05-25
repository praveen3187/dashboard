// import 'pa/homescreen.dart';
import 'package:dashbrd/homescreen.dart';
import 'package:flutter/material.dart';
//import 'schedule.dart';



void main() => runApp( MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}
