import 'package:flutter/material.dart';
import 'package:election_management_system/Helpers/responsiveness.dart';
import 'package:election_management_system/Widgets/horizontal_menu_items.dart';
import  'package:election_management_system/Widgets/vertical_menu_item.dart';


class SideMenuItem extends StatelessWidget {
  final String itemName;
  //final Function onTap;

  const SideMenuItem({ Key? key,required this.itemName,  /*required this.onTap*/ }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      return HorizontalMenuItem(itemName: itemName, /*onTap: onTap(), */);
    
  }
}