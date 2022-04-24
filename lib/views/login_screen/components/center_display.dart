import 'package:flutter/material.dart';

class CenterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/duo-wave.png', width: 200, height: 200),
          Image.asset('assets/images/duolingo-logo.png',
              width: 125, height: 40),
          Container(padding: const EdgeInsets.all(5)),
          const Text('Learn a language for free.',
              style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
          Container(padding: const EdgeInsets.all(5)),
          const Text('Forever.',
              style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
        ],
      ),
    );
  }
}
