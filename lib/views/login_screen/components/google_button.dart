import 'package:duolingo/shared/firebase_authentication.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatefulWidget {
  final FirebaseAuthentication auth;

  const GoogleButton(this.auth, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return GoogleButtonState();
  }
}

class GoogleButtonState extends State<GoogleButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(width: 3, color: Colors.grey.shade400)),
        child: ElevatedButton(
          onPressed: googlePressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/google-icon.png',
                height: 20,
              ),
              Text(
                ' GOOGLE',
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            elevation: 5,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }

  googlePressed() {
    widget.auth.loginWithGoogle().then((value) {
      if (value == null) {
        setState(() {
          print('Google failed');
          // _message = 'Google Login Error';
        });
      } else {
        setState(() {
          print('Google good: $value');

          // _message = 'User $value successfully logged in with Google';
        });
      }
    });
  }
}
