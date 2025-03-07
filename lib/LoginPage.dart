import 'package:flutter/material.dart';
import 'package:flutter1/temp2.dart';
import 'temp2.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: Container(
              width: 300,height: 40,
              color: Colors.grey,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.abc),
                    hintText: "Username",
                    contentPadding: EdgeInsets.only(left: 8)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,height: 40,
              color: Colors.grey,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_circle),
                    // suffixIcon:Icon(Icons.add_circle) ,
                    hintText: "Password",
                    contentPadding: EdgeInsets.only(left: 8)
                ),

              ),
            ),
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>temp2()));
          },
              child: Text("Login",style: TextStyle(fontSize: 25),))
        ],
      ),
    );
  }
}
