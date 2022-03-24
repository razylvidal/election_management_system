import 'package:election_management_system/Widgets/LargeScreen.dart';
import 'package:election_management_system/Widgets/smallScreen.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';
import 'package:flutter/material.dart';
import 'package:election_management_system/Helpers/responsiveness.dart';
import 'package:election_management_system/Widgets/top_navigator.dart';

class HomePage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(), 
        smallScreen: SmallScreen(), 
        ),
    );
  }
}