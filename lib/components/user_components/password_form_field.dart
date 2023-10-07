import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  String text;

  PasswordFormField({required this.text});

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState(text);
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  String text;
  bool pwVisible = false;

  _PasswordFormFieldState(this.text);

  @override
  void initState() {
    bool _passwordVisible = false;
  }

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
          obscureText: !pwVisible,
          decoration: InputDecoration(
            hintText: "Enter your $text",
            suffixIcon: IconButton(
              icon: Icon(pwVisible ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  pwVisible = !pwVisible;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

//Icon(CupertinoIcons.eye_slash)
