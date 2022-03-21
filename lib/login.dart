import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 1000,
                  height: 600,
                  decoration: BoxDecoration(  
                  border: Border.all(color: Colors.grey, width: 2),  
                  borderRadius: BorderRadius.circular(10), 
                  color: Colors.grey[400],
                  boxShadow: const [  
                        BoxShadow(
                        color: Colors.black87,
                        offset: Offset(6.0, 6.0),
                        blurRadius: 10.0,
                      ),  
                    ],
                  //for background image
                   image: const DecorationImage(
                      image: AssetImage(
                       'assets/backgroundImage.png'
                      ),
                      fit: BoxFit.fill,
                   )
                  ),
                  //login details
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 10.0),
                    child: MyStatefulWidget(),
                )
              
              )

              ),
              
          ]
        
        ),
       
      )
     
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({ Key? key }) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => Logo();
}

class Logo extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 80,
          height: 80,
         child: Image.asset(
           'assets/logo.png'
           
          ),
        
        ),
       
      ],
    );
  }
}