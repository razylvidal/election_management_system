import 'package:flutter/material.dart';
import 'package:election_management_system/Constant/controllers.dart';
import 'package:get/get.dart';
import 'package:election_management_system/Constant/style.dart';
import 'customText.dart';

class HorizontalMenuItem extends StatelessWidget {
    final String itemName;
   //final Function onTap;
  const HorizontalMenuItem({  Key? key, required this.itemName,/*required this.onTap */}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
                  onTap: (){},
                  onHover: (value){
                    value ?
                    menuController.onHover(itemName) : menuController.onHover("not hovering");
                  },
                  child: Obx(() => Container(
                    color: menuController.isHovering(itemName) ? white.withOpacity(.1) : Colors.transparent,
                    child: Row(
                      children: [
                        Visibility(
                          visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
                          maintainSize: true,
                          maintainAnimation: true,
                          maintainState: true,
                          child: Container(
                            width: 6,
                            height: 40,
                            color: mustard,
                          ),
                        ),
                       SizedBox(width:_width / 88),

                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: menuController.returnIconFor(itemName),
                        ),
                        if(!menuController.isActive(itemName))
                        Flexible(child: CustomText(text: itemName , color: menuController.isHovering(itemName) ?  white : Colors.grey, size: 18, weight: FontWeight.bold,))
                        else
                        Flexible(child: CustomText(text: itemName , color:  Colors.white , size: 18, weight: FontWeight.bold,))

                      ],
                    ),
                  )
                  )
                  
                );
  }
}
 