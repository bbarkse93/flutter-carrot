import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  String text;
  String tapText;
  String url;
  BottomText({required this.text, required this.tapText, required this.url});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: "$text",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: " $tapText",
                style: TextStyle(
                  color: Colors.green[400],
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, "/$url");
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
