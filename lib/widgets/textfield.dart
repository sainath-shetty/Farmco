import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {

  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  MyTextField({required this.hintText,required this.obscureText,required this.controller});


  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.security),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
