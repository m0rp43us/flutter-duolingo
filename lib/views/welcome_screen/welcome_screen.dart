import 'package:flutter/material.dart';

import 'components/bottom_buttons.dart';
import 'components/center_display.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WelcomeScreenState();
  }
}

class WelcomeScreenState extends State<WelcomeScreen> {
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
