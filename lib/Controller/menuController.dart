import 'package:election_management_system/Constant/style.dart';
import 'package:election_management_system/Routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController{

  static MenuController instance = Get.find(); 
  var activeItem = DashboardPageRoute.obs;
  var hoverItem = ''.obs;


  changeActiveitemTo(String itemName){
      activeItem.value = itemName;
  }

  onHover(String itemName){
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName){
    switch(itemName){
      case DashboardPageRoute:
        return _customIcon(Icons.dashboard, itemName);
      case AccountPageRoute:
        return _customIcon(Icons.manage_accounts,itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);

    }
  }

  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)) 
      return Icon(icon, 
      size: 22, 
      color: mustard);

      return Icon(icon, color: isHovering(itemName) ? mustard : Colors.grey);
  }

}