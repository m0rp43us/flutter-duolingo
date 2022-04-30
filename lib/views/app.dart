import 'package:duolingo/views/login_screen/login_screen.dart';
import 'package:duolingo/views/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class MyDuolingo extends StatelessWidget {
  const MyDuolingo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const WelcomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => const LoginScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Duolingo',
      // home: const WelcomeScreen(),
    );
  }
}