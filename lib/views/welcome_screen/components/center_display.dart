import 'package:flutter/material.dart';

class CenterDisplay extends StatelessWidget {
  const CenterDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/duo-wave.png', height: 150),
          Container(padding: const EdgeInsets.all(5)),
          Image.asset('assets/images/duolingo-logo.png',
              width: 125, height: 40),
          Container(padding: const EdgeInsets.all(5)),
          Text('Learn a language for free.',
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600)),
          Container(padding: const EdgeInsets.all(5)),
          Text('Forever.',
              style: TextStyle(fontSize: 20, color: Colors.grey.shade600)),
        ],
      ),
    );
  }
}
