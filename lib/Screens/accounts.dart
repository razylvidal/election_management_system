import 'package:election_management_system/Screens/homepage.dart';
import 'package:election_management_system/Screens/login.dart';
import 'package:election_management_system/Widgets/LargeScreen.dart';
import 'package:election_management_system/Widgets/smallScreen.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';
import 'package:election_management_system/Helpers/responsiveness.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';

class Accounts extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
       body: ResponsiveWidget(
        largeScreen: LargeScreen(), 
        smallScreen: SmallScreen(), 
        ),

      //side menu bar for small screen
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: SizedBox(),
              decoration: BoxDecoration(
                color: Color(0xFFFFB703),
                image: DecorationImage(
                  image: AssetImage('assets/emsLogo.png'),
                  
                     )
              ),
            ),
            ListTile(
              title: Text(
                'Dashboard',
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
              },
            ),
            ListTile(
              title: Text(
                'Accounts',
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                )
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Sign Out',
                 style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                )
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
            ),
          ],
        ),
      ),
    
      
    );
  }
}