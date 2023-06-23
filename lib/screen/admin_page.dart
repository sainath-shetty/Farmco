import 'package:flutter/material.dart';

import '../widgets/textfield.dart';
import 'home_page.dart';
class adminLoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController adhaarNumber = TextEditingController();
  TextEditingController adminPassword = TextEditingController();
  TextEditingController panCard = TextEditingController();
  TextEditingController gstNumber = TextEditingController();
  TextEditingController kisanCard = TextEditingController();

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
                  'Farmer Registration',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            Column(
              children: [
                MyTextField(
                    hintText: "Adhaar Number",
                    obscureText: false,
                    controller: adhaarNumber),

                SizedBox(
                  height: 30,
                ),
                MyTextField(
                  hintText: "GST Number",
                  obscureText: false,
                  controller: gstNumber,
                ),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                  hintText: "Pan Card",
                  obscureText: false,
                  controller: panCard,
                ),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                  hintText: "Kisan Credit Card",
                  obscureText: false,
                  controller: kisanCard,
                ),
                SizedBox(
                  height: 30,
                ),
                MyTextField(
                  hintText: " Set Password",
                  obscureText: true,
                  controller: adminPassword,
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
