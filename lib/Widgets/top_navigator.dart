import 'package:election_management_system/Constant/style.dart';
import 'package:election_management_system/Screens/login.dart';
import 'package:election_management_system/Widgets/customText.dart';
import 'package:election_management_system/Helpers/Responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>

  AppBar(
    backgroundColor: Color(0xFF091C32),
          shadowColor: Colors.grey,
          toolbarHeight: 80,
          elevation: 5,
          title: Image.asset(
            'assets/emsLogo.png',
            fit: BoxFit.contain,
            height: 72,
            ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
            ),
          
          
          
          
         
          ]
        );

iconButton(BuildContext context, GlobalKey<ScaffoldState> key, IconData menu, Color white, Null Function() param4) {
}

     /* title: Image.asset(
            'assets/emsLogo.png',
            fit: BoxFit.contain,
            height: 72,
            ),
            toolbarHeight: 90,
          elevation: 5,
          backgroundColor: Color(0xFF091C32),
          shadowColor: Colors.grey,

        );*/