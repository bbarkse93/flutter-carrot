import 'package:cogwheel_app/size.dart';
import 'package:flutter/material.dart';

class UserTitle extends StatelessWidget {
  String text;
  String? comment;
  UserTitle({required this.text, this.comment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$text",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: medium_gap),
        Text(
          "$comment",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
