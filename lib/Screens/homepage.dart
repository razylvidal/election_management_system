// ignore_for_file: deprecated_member_use

import 'package:election_management_system/Screens/candidate.dart';
import 'package:election_management_system/Screens/election.dart';
import 'package:election_management_system/Screens/login.dart';
import 'package:election_management_system/Screens/voters.dart';
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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(left: 0,right: 0),
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

              //Navigation Label
              
            ),

          //Dashboard
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const CustomText(
                    text: "Dashboard",
                    size: 20,
                    color: Colors.black,
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
                ListTile(
                  leading: const Icon(Icons.assessment),
                  title: const CustomText(
                    text: "Elections",
                    size: 20,
                    color: Colors.black,
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
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const CustomText(
                    text: "Candidates",
                    size: 20,
                    color: Colors.black,
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
                ListTile(
                  leading: const Icon(Icons.people),
                  title: const CustomText(
                    text: "Voters",
                    size: 20,
                    color: Colors.black,
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
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const CustomText(
                    text: "Settings",
                    size: 20,
                    color: Colors.black,
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
      ),

      //Body
      body: Column(
        children: [


          Container(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
          ),
          Row(
            children: [
              Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
            ),


              SizedBox(
                width: 500,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
            ),

            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
            ),
            SizedBox(
                width: 500,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Filter',
                    prefixIcon: const Icon(Icons.arrow_downward),
                  ),
                ),
            ),
            
            Container(
              padding: const EdgeInsets.only(left: 25, right: 50),
            ),

            TextButton.icon(
                      //Today collection graph
                      icon: Icon(
                        Icons.folder,
                        size: 24,
                        color: Colors.black,
                      ),
                      label: Text(
                        //vars here to be setState
                        'Create Election',
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'Cairo_Bold',
                        ),
                      ),
                      onPressed: () {}, //pwdeng refresh button
                    ),
        ],

        
        

        
        
        

 
          
      




        
          )
        ]
      )
          

        
      






    );
  }
}
