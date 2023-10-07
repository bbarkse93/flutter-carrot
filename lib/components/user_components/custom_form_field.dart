import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String text;
  bool isPassword;
  bool passwordVisible;

  CustomFormField(
      {required this.text,
      this.isPassword = false,
      this.passwordVisible = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$text",
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 95, 95, 95)),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your $text",
          ),
        ),
      ],
    );
  }
}
