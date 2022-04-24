import 'dart:ui';

import 'package:flutter/material.dart';

import 'components/bottom_buttons.dart';
import 'components/center_display.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Expanded(child: CenterDisplay()),
          BottomButtons(),
        ],
      ),
    );
  }
}
