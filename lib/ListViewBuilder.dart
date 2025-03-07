import 'package:flutter/material.dart';
import 'package:flutter1/temp.dart';

class Listviewbuilder extends StatefulWidget {
  const Listviewbuilder({super.key});

  @override
  State<Listviewbuilder> createState() => _ListviewbuilderState();
}

class _ListviewbuilderState extends State<Listviewbuilder> {
  @override

  final List data1 =[
    {
      "name":"jasal"
    },
    {
      "name":"zuck"
    },
    {
      "name":"saudha"
    },
    {
      "name":"saudha"
    },
    {
      "name":"saudha"
    },
    {
      "name":"saudha"
    },
  ];


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.blue,
                child: ListView.builder(
          itemCount: data1.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
                final details=data1[index];
                return Container(
          height: 100,
          width: 100,
          child: Text(details["name"]!),
                );
          }
          ),
              ),
          
              Container(
                height: 800,
                width: 300,
                color: Colors.yellow,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    itemCount: data1.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final details=data1[index];
                      return Container(
                        height: 100,
                        width: 100,
                        child: Text(details["name"]!),
                      );
                    }
                ),
              )
          
          
            ],
          ),
        ),
      ),

    );
  }
}
