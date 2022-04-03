import 'package:flutter/material.dart';
import 'package:election_management_system/Constant/controllers.dart';
import 'package:get/get.dart';
import 'package:election_management_system/Constant/style.dart';

import 'customText.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  //final Function onTap;
  const VerticalMenuItem({Key? key, required this.itemName, /*required this.onTap*/})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
        onTap: (){},                      
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? white.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 3,
                      height: 72,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: menuController.returnIconFor(itemName),
                          ),
                          if (!menuController.isActive(itemName))
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: menuController.isHovering(itemName)
                                  ? mustard
                                  : white,
                                  weight: FontWeight.bold,
                                  size: 1,
                            ))
                          else
                            Flexible(
                                child: CustomText(
                              text: itemName,
                              color: Colors.white,
                              size: 18,
                              weight: FontWeight.bold,
                            ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          )
        );
  }
}
