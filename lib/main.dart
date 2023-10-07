import 'package:cogwheel_app/pages/home_page.dart';
import 'package:cogwheel_app/pages/join_page.dart';
import 'package:cogwheel_app/pages/login_page.dart';
import 'package:cogwheel_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/join": (context) => JoinPage(),
      },
      home: HomePage(),
    );
  }
}
