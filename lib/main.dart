import 'package:flutter/material.dart';
import 'package:flutter1/LoginPage.dart';
import 'HomePage.dart';
import 'image.dart';
import 'temp2.dart';
import 'instagram.dart';
import 'foodOrderUI.dart';
import 'ListViewBuilder.dart';
import 'whatsapp.dart';
import 'codmeapp.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: instagram(),
        home: codeme(),
        // home: Images(),
    );
  }
}
