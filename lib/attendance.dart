import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:dashbrd/homescreen.dart';

class AttendancePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          title: Text("Attendance page"),
        ),
        body: Center(child: Text('class starts from 25 th may'),),
        // body: Center(
        //   child: Image.asset("assets/flutter.jpg"),
        // ),
      ),
    );
  }
}
