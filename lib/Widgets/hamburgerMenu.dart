import 'package:flutter/material.dart';

import '../Screens/candidate.dart';
import '../Screens/election.dart';
import '../Screens/homepage.dart';
import '../Screens/voters.dart';
import 'customText.dart';

Drawer HamburgerDrawer(BuildContext context, GlobalKey<ScaffoldState> key) =>
    Drawer(

      child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF091C32),
              ),

              child:Center(
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              ),
              //Navigation Label
              
            

          //Dashboard
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const CustomText(
                    text: "Dashboard",
                    size: 20,
                    color: Color(0xFF091C32),
                    weight: FontWeight.w700,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),

                //Election
                Container(
                  padding: const EdgeInsets.only(top: 10),
                ),
                ListTile(
                  leading: const Icon(Icons.assessment),
                  title: const CustomText(
                    text: "Elections",
                    size: 20,
                    color: Color(0xFF091C32),
                    weight: FontWeight.w700,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ElectionPage(),
                      ),
                    );
                  },
                ),

                //Candidates
                Container(
                  padding: const EdgeInsets.only(top: 10),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const CustomText(
                    text: "Candidates",
                    size: 20,
                    color: Color(0xFF091C32),
                    weight: FontWeight.w700,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CandidatePage(),
                      ),
                    );
                  },
                ),

                //Voters
                Container(
                  padding: const EdgeInsets.only(top: 10),
                ),
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const CustomText(
                    text: "Voters",
                    size: 20,
                    color: Color(0xFF091C32),
                    weight: FontWeight.w700,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VotersPage(),
                      ),
                    );
                  },
                ),

                //settings
                Container(
                  padding: const EdgeInsets.only(top: 10),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const CustomText(
                    text: "Settings",
                    size: 20,
                    color: Color(0xFF091C32),
                    weight: FontWeight.w700,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VotersPage(),
                      ),
                    );
                  },
                ),


                

          ],
        ),

    );
