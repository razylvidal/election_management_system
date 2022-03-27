import 'package:flutter/material.dart';


class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [ /*ConstrainedBox(
                constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth:150,
                ),
                child:*/ Container(
                  color: Color(0xFF023047),
                  width: 230,
                ),
              //),
              
          
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