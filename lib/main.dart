import 'package:flutter/material.dart';
import 'package:election_management_system/Screens/login.dart';
import 'package:election_management_system/Screens/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Election Management System',
      home: HomePage()

    );
  }
}

