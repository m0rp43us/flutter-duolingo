import 'package:duolingo/views/choose_language_screen/choose_language_screen.dart';
import 'package:duolingo/views/login_screen/login_screen.dart';
import 'package:duolingo/views/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';

class MyDuolingo extends StatelessWidget {
  const MyDuolingo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/choose-language': (context) => const ChooseLanguageScreen(),
        '/home': (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Duolingo',
      // home: const WelcomeScreen(),
    );
  }
}