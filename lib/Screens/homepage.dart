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
    );
  }
}
