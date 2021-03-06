import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:election_management_system/Screens/homepage.dart';

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
                  Color(0xFF293045),
                  Color(0xFF4A6488),
                  Color(0xFF223C5B),
                ] 
                )

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 15.0),
                  child: SizedBox(
                    width: 300,
                    height: 160,
                    child: Image.asset('assets/emsLogo.png'),
                    
                  )
                ),
              
                Container(
                  height: 380,
                  width: 600,
                  decoration: BoxDecoration(  
                  border: Border.all(color: Colors.grey, width: 1),  
                  borderRadius: BorderRadius.circular(10), 
                  color: Colors.blueGrey,
                  boxShadow: const [  
                        BoxShadow(
                        color: Colors.black87,
                        offset: Offset(6.0, 6.0),
                        blurRadius: 10.0,
                      ), 
                  ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 35),
                      Text(
                        'Please enter your username and password to continue',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                     
                      //dropdown box for user type
                      Padding(
                        padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                        child: _User()
                      ),
                      //radio button for depertment
                      Padding(
                        padding: EdgeInsets.only(left: 100.0, bottom: 10.0, right: 100.0),
                        child: _Department(),
                      ),
                      //input field for username
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: _Username()
                      ),
                       //input field for password
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, bottom: 25.0),
                        child: _Password()
                      ),
                      //login button
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child:Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Color(0xFF091C32),
                              borderRadius: BorderRadius.circular(20),
                                boxShadow: const [  
                                  BoxShadow(
                                  color: Colors.black87,
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 10.0,
                                ), 
                              ]
                            ),    
                        
                              
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => HomePage()));
                            },
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 17,
                                fontWeight: FontWeight.w900
                                ),
                            ),
                          ),
                        ),
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

class _User extends StatefulWidget {
  const _User({ Key? key }) : super(key: key);

  @override
  State<_User> createState() => __UserState();
}

class __UserState extends State<_User> {
 String? selectedValue = 'Admin';
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _dropdownFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 100.0, left: 100.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                ),
                validator: (value) => value == null ? "Select a country" : null,
                dropdownColor: Colors.grey[300],
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text(
                      'Admin',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    value: 'Admin',
                  ),
                   DropdownMenuItem(
                    child: Text(
                      'Voter',
                       style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    value: 'Voter',
                  ),
                   DropdownMenuItem(
                    child: Text(
                      'Campaign Manager',
                       style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    value: 'Campaign Manager',
                    )
                ]),
            )
          ],
        )
      );
  }
}

class _Department extends StatefulWidget {
  const _Department({ Key? key }) : super(key: key);

  @override
  State<_Department> createState() => __DepartmentState();
}

class __DepartmentState extends State<_Department> {
   // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'JHS';
 
  // Group Value for Radio Button.
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'JHS';
                  id = 1;
                });
              },
              activeColor: Color(0xFF091C32),
            ),
            Text(
              'JHS',
              style: new TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 70.0,),
 
            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'SHS';
                  id = 2;
                });
              },
              activeColor: Color(0xFF091C32),
            ),
            Text(
              'SHS',
              style: new TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _Username extends StatefulWidget {
  const _Username({ Key? key }) : super(key: key);

  @override
  State<_Username> createState() => __UsernameState();
}

class __UsernameState extends State<_Username> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 100.0 , right: 100.0),
      child: TextField(
               decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                  hintText: 'Username',
                ),
              )
     
    );
  }
}

class _Password extends StatefulWidget {
  const _Password({ Key? key }) : super(key: key);

  @override
  State<_Password> createState() => __PasswordState();
}

class __PasswordState extends State<_Password> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 100.0 , right: 100.0),
      child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                  hintText: 'Password'),
              )
    );

  }
}