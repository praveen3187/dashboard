import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:dashbrd/homescreen.dart';

class CoursesPage extends StatelessWidget {
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
          title: Text("Course page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Text('List of the Courses',style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic)),
          Card(child: Text('HTML & CSS',),
          shadowColor: Color.fromARGB(255, 254, 192, 4),),
          SizedBox(height:10,),
          Card(child: Text('Cloud computing'),
          shadowColor: Colors.amber,),
           SizedBox(height:10,),
          Card(child: Text('App Development'),
          shadowColor: Colors.amber,)
        ],)
          
          
      )
    );
  }
}
