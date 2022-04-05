// ignore_for_file: deprecated_member_use

import 'package:election_management_system/Screens/Table/TableDashboard.dart';
import 'package:election_management_system/Widgets/hamburgerMenu.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Top Navigation Bar
      appBar: topNavigationBar(context, scaffoldKey),
      //hamburger menu
      drawer: HamburgerDrawer(context, scaffoldKey),
        
      

      //Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Container(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
          ),
          Row(
            children: [
              Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              ),

              //search bar
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

              //filter bar
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

            

              //create election button
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  shadowColor: const Color(0xFF091C32),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        TextButton.icon(
                          //Today collection graph
                          icon: const Icon(
                            Icons.folder,
                            size: 24,
                            color: Color(0xFF091C32),
                          ),
                          label: const Text(
                            //vars here to be setState
                            'Create Election',
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 20,
                              color:  Color(0xFF091C32),
                              fontFamily: 'Cairo_Bold',
                            ),
                          ),
                          onPressed: () {}, //pwdeng refresh button
                        ),
                      
                      ],
                    ),
                  ),
                ),

              ],
          ),
          Expanded(
            child: Container(
               width: (MediaQuery.of(context).size.width),
              height: (MediaQuery.of(context).size.height) / .5,
              child: TableDashboard(),
            ),
          )


        ]
      )
          

        
      






    );
  }
}
