import 'package:flutter/material.dart';


class LargeScreen extends StatelessWidget {
  const LargeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: Container(
              color: Color(0xFF023047),
            )
          ),
          Expanded( 
            flex: 6,
            child: Container(
              color: Colors.white,
            ),
          


          )
        ],
    );
  }
}