import 'package:flutter/material.dart';
import 'package:flutter1/chatScreen.dart';
import 'package:flutter1/storieView.dart';

class whatsapp extends StatefulWidget {
  whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  int screen = 1;

  screenChange(value) {
    setState(() {
      screen = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.more_horiz,
          size: 40,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.camera_alt,
            size: 35,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.add_circle,
            size: 35,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      screenChange(1);

                      print("yoyur screen is $screen");
                    },
                    child: Text("Chats")),
                TextButton(
                    onPressed: () {
                      screenChange(2);
                      print("yoyur screen is $screen");
                    },
                    child: Text("status")),
                TextButton(
                    onPressed: () {
                      screenChange(3);
                      print("yoyur screen is $screen");
                    },
                    child: Text("calls")),
              ],
            ),
          ),
          screen == 1
              ? Expanded(
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final details = data[index];
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ChatScreen(
                                  name: details["Name"],
                                  url: details["profile"]),
                            ));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(3),
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: NetworkImage(details["profile"]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    details["Name"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              : screen == 2
                  ? Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...data.map((details) {
                                return InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          StoryView(url:details["profile"],

                                          ),));
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(3),
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  details["profile"]),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Text(details["Name"])
                                    ],
                                  ),
                                );
                              })
                            ],
                          ),
                        )
                      ],
                    )
                  : Expanded(
                      child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            final details = data[index];
                            return Container(
                              margin: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(3),
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image:
                                              NetworkImage(details["profile"]),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      details["Name"],
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    )
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> data = [
  {
    "Name": "jasy",
    "profile":
        "https://tse2.mm.bing.net/th?id=OIP.xibp1_lVnSCr6y-AO2vh9wHaHa&pid=Api&P=0&h=180"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "Professor",
    "profile":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-fUxp_mQjz879eazpgu0dP5aVc0duDUX1QQ&s"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "jasy",
    "profile":
        "https://tse2.mm.bing.net/th?id=OIP.xibp1_lVnSCr6y-AO2vh9wHaHa&pid=Api&P=0&h=180"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "Professor",
    "profile":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-fUxp_mQjz879eazpgu0dP5aVc0duDUX1QQ&s"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "jasy",
    "profile":
        "https://tse2.mm.bing.net/th?id=OIP.xibp1_lVnSCr6y-AO2vh9wHaHa&pid=Api&P=0&h=180"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "Professor",
    "profile":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-fUxp_mQjz879eazpgu0dP5aVc0duDUX1QQ&s"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "jasy",
    "profile":
        "https://tse2.mm.bing.net/th?id=OIP.xibp1_lVnSCr6y-AO2vh9wHaHa&pid=Api&P=0&h=180"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "Professor",
    "profile":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-fUxp_mQjz879eazpgu0dP5aVc0duDUX1QQ&s"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "jasy",
    "profile":
        "https://tse2.mm.bing.net/th?id=OIP.xibp1_lVnSCr6y-AO2vh9wHaHa&pid=Api&P=0&h=180"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "Professor",
    "profile":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-fUxp_mQjz879eazpgu0dP5aVc0duDUX1QQ&s"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "jasy",
    "profile":
        "https://tse2.mm.bing.net/th?id=OIP.xibp1_lVnSCr6y-AO2vh9wHaHa&pid=Api&P=0&h=180"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
  {
    "Name": "Professor",
    "profile":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-fUxp_mQjz879eazpgu0dP5aVc0duDUX1QQ&s"
  },
  {
    "Name": "Alice",
    "profile":
        "https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/67363257f3ab95001dd5daba.png"
  },
];

screen2() {}
