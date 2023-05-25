import 'package:dashbrd/admin.dart';
import 'package:dashbrd/attendance.dart';
import 'package:dashbrd/course.dart';
import 'package:dashbrd/plancourse.dart';
import 'package:dashbrd/result.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'schedule.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:Stack(
        children: [
          Container(
            height: size.height* .3,
            
            decoration: BoxDecoration(
              image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/header.png')
              ),
            ),
          ),
          SafeArea(
              child: Padding(
                padding:  EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                    height:64,
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          
                          radius: 40,
                          backgroundImage:AssetImage('assets/images/IMG_9043.JPG'),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('PRAVEEN',
                            style: TextStyle(fontStyle:FontStyle.italic,fontSize:30,backgroundColor: Color.fromARGB(255, 246, 247, 243),color: Color.fromARGB(255, 20, 15, 160)),),
                            Text('5191411001',
                            style: TextStyle(fontSize: 20),)
                          ],
                        )
                        
                    ],)
                        
                  ),
                    SizedBox(height: 70,),       
Column(
  children: [
    Row(
      children: [
        Padding(

          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 100,
            child:GestureDetector(
              child: CircleAvatar(
                            radius: 60,
                            backgroundImage:AssetImage('assets/images/schedule.jpg'),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>schedulePage()));
                          },
            ),
            ),
        ),
        SizedBox(width: 30,),
        Padding(

          padding: const EdgeInsets.all(15.0),
          child: Container(
            
            height: 100, 
            
               child:GestureDetector(
                 child: CircleAvatar(
                            radius: 50,
                            backgroundImage:AssetImage('assets/images/2206248.png'),
                          ),
                           onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminPage()));
                          },
               ),
            )
            ),
        
      ],
    )
  ],
),    
Row(
  children: [
    SizedBox(width: 40,),
    Text('schedule'),
    SizedBox(width: 130,),
    Text('admin'),
  ]
    ),
                  

SizedBox(height: 20,),
Column(
  children: [
    Row(
      children: [
        Padding(

          padding: const EdgeInsets.all(15.0),
          child: Container(
            
            height: 100,
          
              child:GestureDetector(
                child: CircleAvatar(
                            radius: 50,
                            backgroundImage:AssetImage('assets/images/attendance.jpeg'),
                          ),
                           onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AttendancePage()));
                          },
              ),
            ),
        ),
        SizedBox(width: 49,),
        Padding(

          padding: const EdgeInsets.all(15.0),
          child: Container(
            
            height: 100,
          child:GestureDetector(
            child: CircleAvatar(
                            radius: 50,
                            backgroundImage:AssetImage('assets/images/result.jpeg'),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));
                          },
          ),
            )
        ),
        
        
         
      ],
      // 
    )
  ],
),  

Row(
  children: [
    SizedBox(width: 40,),
    Text('attendance'),
    SizedBox(width: 120,),
    Text('Results'),
  ]
    ),  

SizedBox(height: 30,),

Column(
  children: [
    Row(
      children: [
        Padding(

          padding: const EdgeInsets.all(15.0),
          child: Container(
            
            height: 100,
          child:GestureDetector(
            child: CircleAvatar(
                            radius: 50,
                            backgroundImage:AssetImage('assets/images/courses.png'),
                          ),
                           onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursesPage()));
                          },
          ),
            )
        ),
        SizedBox(width: 49,),
        Padding(

          padding: const EdgeInsets.all(15.0),
          child: Container(
            
            height: 100,

               child:GestureDetector(
                 child: CircleAvatar(
                            radius: 50,
                            backgroundImage:AssetImage('assets/images/plancourse.jpg'),
                            
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>PlanCoursesPage()));
                          },
               ),
            )
            ),
        
        
          
      ],
      // 
    )
  ],
),        
Row(
  children: [
    SizedBox(width: 40,),
    Text('Courses'),
    SizedBox(width: 120,),
    Text('Course Plan'),
  ]
    ),  

                  ]
                ),
                
              ),
            ),
          

        ],
      ),
      

    );
  }
}