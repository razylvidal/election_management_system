import 'package:election_management_system/Screens/candidate.dart';
import 'package:election_management_system/Screens/login.dart';
import 'package:election_management_system/Screens/voters.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';

import '../Widgets/customText.dart';
import 'homepage.dart';

// ignore: must_be_immutable
class ElectionPage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  ElectionPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Top Navigation Bar
      appBar: topNavigationBar(context, scaffoldKey),

      //hamburger menu
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF091C32),
              ),


              //Navigation Label
              child: Text(
                'Election',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),


            //Label Manage
            const ListTile(
              contentPadding: EdgeInsets.only(left: 125,),
              title: Text('Manage'),
            ),

            //Dashboard Page
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: const Text(
                'Dashboard',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),
            
            //Election Page
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Navigator.push(
                context, MaterialPageRoute(builder: (_) => ElectionPage()));
              },
              child: const Text(
                'Election',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),

            //Candidate Page
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Navigator.push(
                context, MaterialPageRoute(builder: (_) => CandidatePage()));
              },
              child: const Text(
                'Candidates',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),


            //Voters Page
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Navigator.push(
                context, MaterialPageRoute(builder: (_) => VotersPage()));
              },
              child: const Text(
                'Voters',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),
            
            //Label Settings
            const ListTile(
              contentPadding: EdgeInsets.only(left: 125),
              title: Text('Settings'),
            ),


            //Account Page
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: const Text(
                'Account',
                style: TextStyle(color: Color(0xFF091C32), fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),


            //Logout Button
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {
                Navigator.push(
                context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),
          ],
        ),
      ),


      //Body
      body: Container(
        child: Column(
          children: <Widget>[

            //Title Page
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF091C32),
              child: Center(
                child: CustomText(
                  text: 'Election',
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
