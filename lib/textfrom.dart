import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfrom extends StatelessWidget {
  const Textfrom({super.key, required this.name, required this.color});
final String name;
final Color color;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        // height: 50,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(name,style: TextStyle(color: color),),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),
      ),
    );
  }
}
