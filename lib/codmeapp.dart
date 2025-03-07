import 'package:flutter/material.dart';
import 'package:flutter1/LoginTab.dart';
import 'package:flutter1/RegisterTab.dart';

class codeme extends StatelessWidget {
  const codeme({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Color(0xffb4b2c2)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,

        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 408,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(15, 15),bottomRight: Radius.elliptical(15, 15)),
                  color: Color(0xff1B1645)
                ),
                child:
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 200),
                     child: Image(
                         image: AssetImage('assets/codeme.png')
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 110,left: 240),
                     child: Text("Explore Syllabus >>",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 13),),
                   )
                 ],
               )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 174.0),
                child: Text("Discover Your\nLearning Here",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600  ),),
              ),
              SizedBox(height: 150,),
              Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 2,),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => code2(),));
                  },
                      child: Container(
                        width: 148,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(child: Text("Register")),
                      ),
                    ),
                    Container(
                      width: 148,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Center(child:
                      TextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Logintab(),));
                      }, child: Text("Login",style: TextStyle(color: Colors.white),)),)
                    )
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}


        
