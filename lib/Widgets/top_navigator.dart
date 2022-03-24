import 'package:election_management_system/Constant/style.dart';
import 'package:election_management_system/Widgets/customText.dart';
import 'package:election_management_system/Helpers/Responsiveness.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>

  AppBar(
    backgroundColor: Color(0xFF091C32),
          shadowColor: Colors.grey,
          leadingWidth: 200,
          toolbarHeight: 80,
          elevation: 5,
        
    leading: !ResponsiveWidget.isLargeScreen(context) ? 
      Row(
            children: [
              IconButton(
              padding: EdgeInsets.only(left: 15),
              icon: Icon(Icons.menu), 
              onPressed: (){
              key.currentState?.openDrawer();
              }
          ),
              Visibility(
                
                child: CustomText(
                  text: '    Overview',
                  color: white,
                  size: 20,
                  weight: FontWeight.bold,
                ),
               
              )
          ]
          ) : 
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Image.asset(
                'assets/emsLogo.png',
                fit: BoxFit.contain,
                height: 72,
                )
              )
                ],
          ),
          
          
         
          
        );

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