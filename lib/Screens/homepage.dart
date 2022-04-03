import 'package:election_management_system/Screens/Accounts.dart';
import 'package:election_management_system/Widgets/LargeScreen.dart';
import 'package:election_management_system/Widgets/side_menu.dart';
import 'package:election_management_system/Widgets/smallScreen.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';
import 'package:election_management_system/Helpers/responsiveness.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:get/get.dart';

import 'login.dart';

class HomePage extends StatelessWidget {
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
         child: SideMenu(),
      ),
        /*child: ListView(
          children: <Widget>[
             DrawerHeader(
                child: Image.asset('assets/emsLogo.png'),
                decoration: BoxDecoration(
                  color:  Color(0xFF091C32),
                ),
              ),

          ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.0,right: 10.0),
                  child:  Icon(Icons.dashboard_rounded, size: 30),
                  ),
                Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ]
            ),
            onTap: () {
                    Navigator.pop(context);
                  }
                
          ),

          ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.0,right: 10.0),
                  child:  Icon(Icons.manage_accounts_rounded, size: 30),
                  ),
                Text(
                'Accounts',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ]
            ),
            onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (_) => Accounts()));
                  }
                
          ),
          ListTile(
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.0,right: 10.0),
                  child:  Icon(Icons.logout, size: 30),
                  ),
                Text(
                'Sign Out',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ]
            ),
            onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
                  }
                
          )
          ],
        ),
      ),*/
    
      
    );
  }
}