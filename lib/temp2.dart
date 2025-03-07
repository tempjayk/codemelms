import 'package:flutter/material.dart';

class temp2 extends StatefulWidget {
  const temp2({super.key});

  @override
  State<temp2> createState() => _temp2State();
}

class _temp2State extends State<temp2> {

  final List<Map<String,dynamic>>data=[
    {"Name":"jasal","imege":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/220px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg"},
    {"Name":"jayk","imege":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx_Et0t6mokrk9ISI0ANtGGYeMEihXpH-NvQ&s"},
    {"Name":"jae","imege":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/220px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg"},
    {"Name":"scarlet","imege":"https://i.scdn.co/image/ab6775700000ee857378345d3bd337540b47fd3e"},
    {"Name":"jasal","imege":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/220px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg"},
    {"Name":"jayk","imege":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx_Et0t6mokrk9ISI0ANtGGYeMEihXpH-NvQ&s"},
    {"Name":"jae","imege":"https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/220px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg"},
    {"Name":"scarlet","imege":"https://i.scdn.co/image/ab6775700000ee857378345d3bd337540b47fd3e"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...data.map((details){
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 80,
                          height: 80,
                          decoration:
                          BoxDecoration(
                            shape: BoxShape.circle,
                            image:DecorationImage(image: NetworkImage(details["imege"]),
                            fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Text(details["Name"])
                      ],
                    )
                  ;}
                  )
                ],
              ),
            ),
            ...data.map((details){
              return
                Container(
                height: 600,
                child: Column(
                  children: [
                    AppBar(backgroundColor: Colors.black,),
                    Image(image: NetworkImage(details["imege"]),

                    )
                  ],
                ),
              )
            ;})
          ],
        ),
      ),
    );
  }
}
