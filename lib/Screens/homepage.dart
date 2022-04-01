import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';

import '../Widgets/customText.dart';

class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),


      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF091C32),
              ),

              child: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            const ListTile(
              contentPadding: EdgeInsets.only(left: 125,),
              title: Text('Manage'),
            ),


            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: const Text(
                'Dashboard',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(bottom: 25),
            ),
            

            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: const Text(
                'Election',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),

            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: const Text(
                'Candidates',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),

            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: const Text(
                'Voters',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),

            const ListTile(
              contentPadding: EdgeInsets.only(left: 125),
              title: Text('Settings'),
            ),

            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: const Text(
                'Account',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(bottom: 25),
            ),

            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),


          ],
        ),
      ),

      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF091C32),
              child: Center(
                child: CustomText(
                  text: 'Election Management System',
                  color: Colors.white,
                  size: 30,
                  weight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF091C32),
              child: Center(
                child: CustomText(
                  text: 'Welcome to Election Management System',
                  color: Colors.white,
                  size: 20,
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),





    );
    
  }
}
