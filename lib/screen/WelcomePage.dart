import 'package:farmco/screen/login_page.dart';
import 'package:farmco/screen/signup_page.dart';
import 'package:flutter/material.dart';

import 'admin_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => adminLoginPage()),
                );
              },
              child: Icon(
                Icons.admin_panel_settings,

                size: 35,
              )),
        ),
        body: Column(children: [
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset('images/farmco1.png'),


              ),
            ),

          ),
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
             children: [
               Text('FARMCO',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green),),
               Container(
                   width: 300,
                   height: 60,
                   child: ElevatedButton(
                     onPressed: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => LoginPage()),
                       );
                     },
                     child: Text(
                       'Log In',
                       style: TextStyle(fontSize: 30),
                     ),
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.deepOrangeAccent,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30))),
                   )
               ),
               Container(
                   width: 300,
                   height: 60,
                   child: ElevatedButton(
                     onPressed: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => SignupPage()),
                       );
                     },
                     child: Text(
                       'Sign Up',
                       style: TextStyle(fontSize: 30),
                     ),
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.deepOrangeAccent,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30))),
                   )
               ),
             ],
            ),
          ))
        ]));
  }
}
