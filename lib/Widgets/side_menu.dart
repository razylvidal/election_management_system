import 'package:election_management_system/Constant/controllers.dart';
import 'package:election_management_system/Constant/style.dart';
import 'package:election_management_system/Helpers/responsiveness.dart';
import 'package:election_management_system/Routing/routes.dart';
import 'package:election_management_system/Widgets/customText.dart';
import 'package:election_management_system/Widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(

      color: darkBlue,
      child: ListView (children: [
        if(ResponsiveWidget.isSmallScreen(context))
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [ 
            Row(
              children: [
                /*SizedBox(
                  width: _width / 48,
                ),*/
                Padding(padding: EdgeInsets.only(left:20),
                child: Image.asset('assets/emsLogo.png', width: 250, height: 200,),
                ),
                /*Flexible(child: CustomText(
                  text: 'Dashboard',
                  size: 20,
                  weight: FontWeight.bold,
                  color: Colors.black,
                  )
                ),*/

               // SizedBox(width: _width / 48,),
              ],
            ),
            
        
          ]
        ),
        //SizedBox(height: 40,),
            Divider(color: mustard.withOpacity(.1),),
            Column(
              mainAxisSize: MainAxisSize.min,
              children:
                sideMenuItems.map((itemName) => SideMenuItem(
                  itemName: itemName == AuthenticationPageRoute ? 'Sign Out' : itemName,

                  /*onTap: (){
                    if(itemName == AuthenticationPageRoute){
                      //TODO:: go to authentication page
                    }

                    if(!menuController.isActive(itemName)){
                      menuController.changeActiveitemTo(itemName);
                      if(ResponsiveWidget.isSmallScreen(context))
                      Get.back();
                      //TODO:: go to name route
                    }
                  }, */
                  
                  )
                ).toList(),

          
            ),
      ],
    )
      
    );
  }
}