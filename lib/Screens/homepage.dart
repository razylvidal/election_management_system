import 'package:election_management_system/Screens/candidate.dart';
import 'package:election_management_system/Screens/election.dart';
import 'package:election_management_system/Screens/voters.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';

import '../Widgets/customText.dart';

class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
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
<<<<<<< Updated upstream


              //Navigation Label
=======
>>>>>>> Stashed changes
              child: Text(
                'Dashboard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),

<<<<<<< Updated upstream

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
              padding: const EdgeInsets.only(bottom: 25),
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
              padding: const EdgeInsets.only(bottom: 25),
            ),


            //Logout Button
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
            ),
=======
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


                

>>>>>>> Stashed changes
          ],
        ),
      ),


      //Body
<<<<<<< Updated upstream
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
                  text: 'Dashboard',
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
=======
      body: Column(
        
      )

>>>>>>> Stashed changes





    );
    
  }
}
