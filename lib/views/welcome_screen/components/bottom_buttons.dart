import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            chooseLanguageButton(),
            logInButton(context),
          ],
        ),
      ),
    );
  }

  logInButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(width: 3, color: const Color(0xFF7ac70c)),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login');
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const LoginScreen()),
          // );
        },
        child: const Text(
          'I ALREADY HAVE AN ACCOUNT',
          style: TextStyle(
              color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }

  chooseLanguageButton() {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      padding: const EdgeInsets.only(bottom: 2),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'CHOOSE A LANGUAGE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF7ac70c),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
//
// class BottomButtonsState extends State<BottomButtons> {
//   @override
//   Widget build(BuildContext context) {
//     return
// }
