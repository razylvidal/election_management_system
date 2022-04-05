import 'package:election_management_system/Widgets/hamburgerMenu.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';

class VotersPage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Top Navigation Bar
      appBar: topNavigationBar(context, scaffoldKey),

      //hamburger menu
      drawer: HamburgerDrawer(context, scaffoldKey),


    body: Column(


    )

    );
    
  }
}
