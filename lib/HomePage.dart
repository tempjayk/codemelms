import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('INSTAGRAM',style: TextStyle(color:  Colors.black,fontSize: 30,fontWeight: FontWeight.w700),),
        actions: [
          Icon(Icons.notifications_active,size: 45,color: Colors.red,)
        ],
        ),
      body: Column(children: [
        Text("Welcome to Flutter.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 35),),
        Container(
          width: 375,
          height: 300,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.yellow,
            border: Border.all(
              color: Colors.blue,
              width: 5,
            )
          ),
          child: Row(children: [
            Text("jasal"),
            Text("jasal2"),
            Text("jasal3"),
            Text("jasal4"),
            Text("jasal5"),
            Text("jasal6"),
          ],)


        )
      ],)
      
    );
  }
}