import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/textfrom.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1645),
      body: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage("assets/girlimage.png"),
            ),
          ),
          Textfrom(name: "Name",color: Colors.black,),
          Textfrom(name: "Adress",color: Colors.blue),
          Textfrom(name: "Email",color:  Colors.red,),
        ],
      ),
    );
  }

}
