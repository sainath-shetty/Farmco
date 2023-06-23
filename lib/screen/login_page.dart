import 'package:farmco/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:farmco/widgets/textfield.dart';


class LoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();


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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            Column(
              children: [
                MyTextField(
                    hintText: "Email",
                    obscureText: false,
                    controller: loginEmail),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: loginPassword,
                ),
              ],
            ),
            Center(
              child: Container(
                height: 60,
                width: 200,
                child: ElevatedButton(
                  onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );},
                  child: Text('Log In'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
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