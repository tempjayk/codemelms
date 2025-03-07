import 'package:flutter/material.dart';

class Foodorderui extends StatefulWidget {
  const Foodorderui({super.key});

  @override
  State<Foodorderui> createState() => _FoodorderuiState();
}
final data=[
  {
    "image":"https://irp-cdn.multiscreensite.com/3d7882d8/dms3rep/multi/PngItem_2486809.png",
    "name":"Vegitable pizza"
  },
  {
    "image":"https://www.licious.in/blog/wp-content/uploads/2020/12/3-Step-Chicken-Salad.jpg",
    "name":"Chiken pizza"
  },
  {
    "image":"https://irp-cdn.multiscreensite.com/3d7882d8/dms3rep/multi/PngItem_2486809.png",
    "name":"Vegitable pizza"
  }
];


class _FoodorderuiState extends State<Foodorderui> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.lightBlueAccent,
          Colors.white,
          Colors.white,
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            "MACOIS",
            style: TextStyle(fontWeight: FontWeight.w900),
          )),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.location_on,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Palazi home,villa \n Calicut",
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 80),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 15),
                  child: Icon(
                    Icons.account_circle_sharp,
                    size: 40,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.stars_rounded,
                    size: 50,
                    color: Colors.orange,
                  ),
                  Text(
                    "FAVORITES",
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {

                  final details=data[index];


                  return Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(5, 8))
                              ]),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              details["image"]!),
                                          fit: BoxFit.cover),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        details["name"]!,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 10),
                                      child: Container(
                                          width: 110,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.blueAccent,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons
                                                    .add_shopping_cart_outlined,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Add to cart",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )

            // Padding(
            //   padding: const EdgeInsets.only(top: 50.0),
            //   child: Column(
            //     children: [
            //       Container(
            //         width: 350,
            //         height: 130,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(40),
            //             boxShadow: [
            //               BoxShadow(
            //                   color: Colors.grey,
            //                   spreadRadius: 1,
            //                   blurRadius: 10,
            //                   offset: Offset(5, 8))
            //             ]),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(left: 8),
            //               child: Container(
            //                   width: 120,
            //                   height: 120,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     image: DecorationImage(
            //                         image: NetworkImage(
            //                             "https://www.licious.in/blog/wp-content/uploads/2020/12/3-Step-Chicken-Salad.jpg"),
            //                         fit: BoxFit.cover),
            //                   )),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Padding(
            //                     padding: const EdgeInsets.only(left: 10.0),
            //                     child: Text(
            //                       "Raw meat mix salad",
            //                       style: TextStyle(
            //                           fontSize: 20,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding:
            //                         const EdgeInsets.only(left: 8.0, top: 10),
            //                     child: Container(
            //                         width: 110,
            //                         height: 40,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(15),
            //                           color: Colors.blueAccent,
            //                         ),
            //                         child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Icon(
            //                               Icons.add_shopping_cart_outlined,
            //                               color: Colors.white,
            //                             ),
            //                             Text(
            //                               "Add to cart",
            //                               style:
            //                                   TextStyle(color: Colors.white),
            //                             )
            //                           ],
            //                         )),
            //                   )
            //                 ],
            //               ),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 50.0),
            //   child: Column(
            //     children: [
            //       Container(
            //         width: 350,
            //         height: 130,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(40),
            //             boxShadow: [
            //               BoxShadow(
            //                   color: Colors.grey,
            //                   spreadRadius: 1,
            //                   blurRadius: 10,
            //                   offset: Offset(5, 8))
            //             ]),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(left: 8),
            //               child: Container(
            //                   width: 120,
            //                   height: 120,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     image: DecorationImage(
            //                         image: NetworkImage(
            //                             "https://tse4.mm.bing.net/th?id=OIP.QctLcyM8FFc2MnPbGRenIAHaHa&pid=Api&P=0&h=180"),
            //                         fit: BoxFit.cover),
            //                   )),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Padding(
            //                     padding: const EdgeInsets.only(left: 8.0),
            //                     child: Text(
            //                       "Pasta italian cuisine",
            //                       style: TextStyle(
            //                           fontSize: 20,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding:
            //                         const EdgeInsets.only(left: 8.0, top: 10),
            //                     child: Container(
            //                         width: 110,
            //                         height: 40,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(15),
            //                           color: Colors.blueAccent,
            //                         ),
            //                         child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Icon(
            //                               Icons.add_shopping_cart_outlined,
            //                               color: Colors.white,
            //                             ),
            //                             Text(
            //                               "Add to cart",
            //                               style:
            //                                   TextStyle(color: Colors.white),
            //                             )
            //                           ],
            //                         )),
            //                   )
            //                 ],
            //               ),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 50.0),
            //   child: Column(
            //     children: [
            //       Container(
            //         width: 350,
            //         height: 130,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(40),
            //             boxShadow: [
            //               BoxShadow(
            //                   color: Colors.grey,
            //                   spreadRadius: 1,
            //                   blurRadius: 10,
            //                   offset: Offset(5, 8))
            //             ]),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(left: 8),
            //               child: Container(
            //                   width: 120,
            //                   height: 120,
            //                   decoration: BoxDecoration(
            //                     shape: BoxShape.circle,
            //                     image: DecorationImage(
            //                         image: NetworkImage(
            //                             "https://tse2.mm.bing.net/th?id=OIP.WS93QSki6aOhbTm649PNNwHaHa&pid=Api&P=0&h=180"),
            //                         fit: BoxFit.cover),
            //                   )),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Padding(
            //                     padding: const EdgeInsets.only(left: 1.0),
            //                     child: Text(
            //                       "prawns spatial combo",
            //                       style: TextStyle(
            //                           fontSize: 20,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                   ),
            //                   Padding(
            //                     padding:
            //                         const EdgeInsets.only(left: 8.0, top: 10),
            //                     child: Container(
            //                         width: 110,
            //                         height: 40,
            //                         decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(15),
            //                           color: Colors.blueAccent,
            //                         ),
            //                         child: Row(
            //                           mainAxisAlignment:
            //                               MainAxisAlignment.center,
            //                           children: [
            //                             Icon(
            //                               Icons.add_shopping_cart_outlined,
            //                               color: Colors.white,
            //                             ),
            //                             Text(
            //                               "Add to cart",
            //                               style:
            //                                   TextStyle(color: Colors.white),
            //                             )
            //                           ],
            //                         )),
            //                   )
            //                 ],
            //               ),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
