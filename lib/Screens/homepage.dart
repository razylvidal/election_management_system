import 'package:election_management_system/Screens/candidate.dart';
import 'package:election_management_system/Screens/election.dart';
import 'package:election_management_system/Screens/login.dart';
import 'package:election_management_system/Screens/voters.dart';
import 'package:election_management_system/Tables/dashboardList.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';

import '../Widgets/customText.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors;
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
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),

              //Label Manage
              const ListTile(
                contentPadding: EdgeInsets.only(
                  left: 125,
                ),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ElectionPage()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CandidatePage()));
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 200, top: 20),
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 800, top: 20),
                child: Text(
                  '02:01',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ], 
            
            
          ),
        Expanded(
              child: Container(
                width: (MediaQuery.of(context).size.width) / 1.5,
                height: (MediaQuery.of(context).size.height) / 2,
                child: DashboardList(),
              ),
            ),



        ]
      )








    );
  }
}
