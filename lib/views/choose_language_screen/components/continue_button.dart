import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final BuildContext context;
  const ContinueButton(this.context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      // margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      // padding: const EdgeInsets.only(bottom: 2),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/choose-language');
        },
        child: const Text(
          'CONTINUE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF58CC02),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
