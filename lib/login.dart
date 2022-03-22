import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatelessWidget {

 

  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF8A2387),
                  Color(0xFFE94057),
                  Color(0xFFF27121),
                ] 
                )

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(padding: EdgeInsets.only(top: 25.0),
                        child: Image.asset('assets/logo.png')
                    ),
                ),
                ),
                
                const Text(
                  'Election Management System',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,

                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 400,
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        'asdfghjkl',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Users(),
                      )
                      
                    ],
                  ),
                )
    
              ],
            ),


          )
        ,),
     
    );
  }
}

class Users extends StatefulWidget {
  const Users({ Key? key }) : super(key: key);
  
  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
   String selectedValue = 'Login As';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
                        value: selectedValue,
                        items: const [
                          DropdownMenuItem(
                            child: Text('Admin'),
                              value: 'Admin',
                            ),
                            DropdownMenuItem(
                            child: Text('Voter'),
                              value: 'Voter',
                            ),
                            DropdownMenuItem(
                            child: Text('Campaign Manager'),
                              value: 'Campaign Manager',
                            ),
                        ],
                      
                        onChanged: (value) {
                          setState(() {
                          selectedValue = 'its a prank';
                          }
                         );
                        }
    );
  }
}