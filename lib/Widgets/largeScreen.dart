import 'package:election_management_system/Controller/menuController.dart';
import 'package:election_management_system/Widgets/side_menu.dart';
import 'package:election_management_system/Widgets/side_menu_item.dart';
import 'package:flutter/material.dart';


class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [ ConstrainedBox(
                constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth:200,
                ),
                child: Container(
                  color: Color(0xFF023047),
                
                  child: SideMenu(),
                ),
              ),
              
          
          Expanded( 
            flex: 5,
            child: Container(
              color: Colors.white,
            ),
          


          )
        ],
    );
  }
}