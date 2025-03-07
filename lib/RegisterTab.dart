import 'package:flutter/material.dart';
import 'package:flutter1/LoginTab.dart';
import 'package:flutter1/inField.dart';

class code2 extends StatelessWidget {
  const code2({super.key});

  @override
  Widget build(BuildContext context) {
    return
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Color(0xffc0dcec)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            )
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                  children: [
                  Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(15, 15),bottomRight: Radius.elliptical(15, 15)),
                      color: Color(0xff1B1645)
                  ),
                  child:
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Image(
                            image: AssetImage('assets/codeme.png')
                        ),
                      ),
                    ],
                  )
              ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180,top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Create Account",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                          Text("Please enter the details below.",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,height: 2),)
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Infield(hintText: "User Name"),
                    Infield(hintText: "Full Name"),
                    Infield(hintText: "Email Address"),
                    Infield(hintText: "Password"),
                    Infield(hintText: "Confirm Password"),
                    SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  width: 300,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff0E0D22)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Center(child: Text("Register",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                  ),
                ),
                    Row(
                      children: [
                        SizedBox(width: 100),
                        Text("I have already an account?"),
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Logintab(),));
                        }, child: Text("Login",style: TextStyle(color: Color(0xff0099EF)),))
                      ],
                    )
                        ]),
            )
              ),
        );
  }
}
