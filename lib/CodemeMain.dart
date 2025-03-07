import 'package:flutter/material.dart';

class Codememain extends StatelessWidget {
  const Codememain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffDEEAFA),
        title: Text("Public sense"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 148,
                  height: 34,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 34,
                        backgroundImage:AssetImage("assets/prf1.jpeg",),
                      ),
                      Text("Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),
                Icon(Icons.more_vert,size: 30,)
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 3),
              width: 420,
                height: 215,
              decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage("assets/girlimage.png"),
                fit: BoxFit.fill,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
