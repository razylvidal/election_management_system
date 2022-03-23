import 'package:election_management_system/Widgets/LargeScreen.dart';
import 'package:election_management_system/Widgets/smallScreen.dart';
import 'package:flutter/material.dart';
import 'package:election_management_system/Helpers/responsiveness.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/emsLogo.png',
          fit: BoxFit.contain,
          height: 72,
          ),
          toolbarHeight: 90,
        elevation: 5,
        backgroundColor: Color(0xFF091C32),
        shadowColor: Colors.grey,

      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(), 
        smallScreen: SmallScreen(), 
        ),
    );
  }
}