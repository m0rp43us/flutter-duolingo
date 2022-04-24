import 'package:duolingo/views/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class MyDuolingo extends StatelessWidget {
  const MyDuolingo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Duolingo',
      home: LoginScreen(),
    );
  }
}