import 'package:election_management_system/Constant/style.dart';
import 'package:election_management_system/Screens/homepage.dart';
import 'package:election_management_system/Widgets/customText.dart';
import 'package:election_management_system/Helpers/Responsiveness.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>

  AppBar(
    backgroundColor: Color(0xFF091C32),
          shadowColor: Colors.grey,
          leadingWidth: 200,
          toolbarHeight: 100,
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
                  text: '    Dashboard',
                  color: white,
                  size: 20,
                  weight: FontWeight.bold,
                ),
               
              )
          ]
          ) : 

          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
              }, // Image tapped
              splashColor: Colors.white10, // Splash color over image
              child: Ink.image(
                padding: EdgeInsets.all( 15.0),
                fit: BoxFit.cover, // Fixes border issues
                width: 100,
                height: 80,
                image: AssetImage(
                  'assets/emsLogo.png',
                  
                ),
              ),
            )
                      /*Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Image.asset(
                'assets/emsLogo.png',
                fit: BoxFit.contain,
                height: 80,
                
                ),
               
              ),
               onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                }
                ],
                
          ),*/
          
          
         
          
        );

    