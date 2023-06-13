import 'package:farmco/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:farmco/widgets/textfield.dart';
class SignupPage extends StatelessWidget {

  TextEditingController Name = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Mobile = TextEditingController();
  final globalScaffoldKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),

      ),
      body:Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            Column(
              key: globalScaffoldKey,
              children: [
                MyTextField(
                  controller: Name,
                  hintText: "Name",
                  obscureText: false,
                ),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: Password,
                ),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                    hintText: "Email Id",
                    obscureText: false,
                    controller: Email),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                    hintText: "Mobile number",
                    obscureText: false,
                    controller: Mobile),
              ],
            ),
            Center(
              child: Container(
                height: 60,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
