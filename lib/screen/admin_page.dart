import 'package:flutter/material.dart';
class adminLoginPage extends StatelessWidget {
  const adminLoginPage({Key? key}) : super(key: key);

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


    );
  }
}
