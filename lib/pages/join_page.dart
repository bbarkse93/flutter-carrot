import 'package:cogwheel_app/components/logo.dart';
import 'package:cogwheel_app/components/user_components/bottom_text.dart';
import 'package:cogwheel_app/components/user_components/custom_form_field.dart';
import 'package:cogwheel_app/components/user_components/password_form_field.dart';
import 'package:cogwheel_app/components/user_components/user_title.dart';
import 'package:cogwheel_app/size.dart';
import 'package:flutter/material.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Logo(),
            SizedBox(height: xlarge_gap),
            UserTitle(
                text: "Sign Up", comment: "Enter your credentials to continue"),
            SizedBox(height: 50),
            CustomFormField(text: "Username"),
            SizedBox(height: 35),
            CustomFormField(text: "Email"),
            SizedBox(height: 35),
            PasswordFormField(text: "Password"),
            SizedBox(height: large_gap),
            SizedBox(height: large_gap),
            // CustomButton(),
            SizedBox(
              height: 50,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text("Sign Up")),
            ),
            SizedBox(height: large_gap),

            BottomText(
                text: "Already have an account?",
                tapText: "Log in",
                url: "login"),
          ],
        ),
      ),
    );
  }
}
