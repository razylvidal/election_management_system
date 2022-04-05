import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';


import '../Widgets/hamburgerMenu.dart';



// ignore: must_be_immutable
class CandidatePage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  CandidatePage({Key? key}) : super(key: key);
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
