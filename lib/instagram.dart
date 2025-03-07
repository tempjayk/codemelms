import 'package:flutter/material.dart';
import 'package:flutter1/temp.dart';
import 'LoginPage.dart';


class instagram extends StatefulWidget {
  const instagram({super.key});

  @override
  State<instagram> createState() => _instagramState();
}

final List<Map<String,dynamic>>data=[
{"name":"leomessi","profile":"https://tse4.mm.bing.net/th?id=OIP.clf7CH7JgqSqJTtP-s2ljgHaFi&pid=Api&P=0&h=180"},
  {"name":"selenagomez","profile":"https://www.billboard.com/wp-content/uploads/media/selena-gomez-amas-7u-2017-billboard-1548.jpg"},
  {"name":"zynmalik","profile":"https://hips.hearstapps.com/goodhousekeeping-uk/main/embedded/23689/zayn-malik.jpg"},
  {"name":"mammotty","profile":"https://images.indianexpress.com/2023/09/Mammootty.jpg"},
  {"name":"mohanlal","profile":"https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/07/09/702739-mohanlal.jpg"},
  {"name":"fahadfasil","profile":"https://imagesvs.oneindia.com/ta/img/2023/08/rathnavel-1690808977-down-1690951274.jpg"},
  {"name":"nastriya","profile":"https://2.bp.blogspot.com/--Ayfv3uosWA/VztHkUUefRI/AAAAAAAAINQ/u4faap9Mmb4YH5hjLAalnXRl898CxhU4ACKgB/s1600/7EqHjS-h.jpeg"},
];

class _instagramState extends State<instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.heart_broken,
              size: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.mark_chat_unread_outlined,
              size: 35,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,shadowColor: Colors.white,

       child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home_filled,color: Colors.white,size: 35,),
            Icon(Icons.search,color: Colors.white,size: 35,),
            Icon(Icons.add_box_outlined,color: Colors.white,size: 35,),
            Icon(Icons.movie_filter_rounded,color: Colors.white,size: 35,),
            Icon(Icons.person,color: Colors.white,size: 35,),

          ],
        )
        ,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enables horizontal scrolling
              child: Container(
                color: Colors.black,
                child: Row(
                  children: [
                    // Your Story (First Bubble)
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://tse3.mm.bing.net/th?id=OIP.Od4m4w455EEToOQDKESqvgHaFJ&pid=Api&P=0&h=180"), // Your Profile Image
                                  fit: BoxFit.cover, // Fills the container with the image
                                ),
                              ),
                            ),
                            Positioned(
                              right: 5, // Position icon to the right
                              bottom: 5, // Position icon to the bottom
                              child: Icon(
                                Icons.add_circle,
                                size: 24,
                                color: Colors.blueAccent, // "+" icon color
                              ),
                            ),
                          ],
                        ),
                        Text("Your story",style: TextStyle(color: Colors.white),)
                      ],
                    ),

                    // Other Users' Stories (Looping through `data`)
                    ... data.map((details) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(details["profile"]), // Loads profile image from data list
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(details["name"],style: TextStyle(color: Colors.white),)
                        ],
                      );
                    }),
                  ],
                ),
              ),
            )
            ,
            // TextButton(
            //   style: TextButton.styleFrom(
            //     foregroundColor: Colors.blue,
            //     disabledForegroundColor: Colors.red,
            //   ),
            //   onPressed: () {
            //     Navigator.push(
            //         context, MaterialPageRoute(builder: (context) => temp()));
            //   },
            //   child: Text(
            //     'Home',
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // TextButton(
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => Loginpage()));
            //     },
            //     child: Text(
            //       "LogOut",
            //       style: TextStyle(fontSize: 25),
            //     )),


            Column(
              children: [
                Container(
                    width: 500,
                    height: 480,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                            width: 500,
                            height: 80,
                            color: Colors.black,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                Text(
                                  "zuck",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.menu_sharp,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                        SizedBox(
                          height: 400,
                          width: 500,
                          child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://www.cityam.com/wp-content/uploads/2022/02/Mark-Zuckerberg-1.jpg?w=742")),

                        ),

                      ],
                    )),
                Container(
                    width: 500,
                    height: 70,
                    color: Colors.black,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.heart_broken,color: Colors.white,size: 35,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.comment,color: Colors.white,size: 35,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.share,color:  Colors.white,size: 35,),
                        ),
                        Spacer(),
                        Icon(Icons.bookmark,color: Colors.white,size: 35,)
                      ],
                    )
                )
              ],
            )
            ,Column(
              children: [
                Container(
                    width: 500,
                    height: 550,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                            width: 500,
                            height: 80,
                            color: Colors.black,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                Text(
                                  "leomessi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.menu_sharp,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                        SizedBox(
                          height: 400,
                          width: 500,
                          child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://tse1.mm.bing.net/th?id=OIP.sf4xqN4rGo_ksk8aoF1mSwAAAA&pid=Api&P=0&h=180")),

                        ),
                        Container(
                            width: 500,
                            height: 70,
                            color: Colors.black,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.heart_broken,color: Colors.white,size: 35,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.comment,color: Colors.white,size: 35,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.share,color:  Colors.white,size: 35,),
                                ),
                                Spacer(),
                                Icon(Icons.bookmark,color: Colors.white,size: 35,)
                              ],
                            )
                        )

                      ],

                    )),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 500,
                    height: 480,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                            width: 500,
                            height: 80,
                            color: Colors.black,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                                Text(
                                  "ronaldo",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.menu_sharp,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                        SizedBox(
                          height: 400,
                          width: 500,
                          child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://tse3.mm.bing.net/th?id=OIP.u7J-eVp5dbq7mDBpCw8K3gHaE3&pid=Api&P=0&h=180")),

                        ),

                      ],
                    )),
                Container(
                    width: 500,
                    height: 70,
                    color: Colors.black,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.heart_broken,color: Colors.white,size: 35,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.comment,color: Colors.white,size: 35,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.share,color:  Colors.white,size: 35,),
                        ),
                        Spacer(),
                        Icon(Icons.bookmark,color: Colors.white,size: 35,)
                      ],
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
