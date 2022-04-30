import 'dart:ui';

import 'package:duolingo/views/login_screen/components/facebook_button.dart';
import 'package:duolingo/views/login_screen/components/forgot_password.dart';
import 'package:duolingo/views/login_screen/components/google_button.dart';
import 'package:duolingo/views/login_screen/components/login_button.dart';
import 'package:duolingo/views/login_screen/components/policy_text.dart';
import 'package:flutter/material.dart';
import 'components/app_bar.dart';
import 'components/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LoginAppBar(),
      body: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: InputField(),
            ),
            Container(margin: const EdgeInsets.only(top: 10)),
            const LoginButton(),
            Container(margin: const EdgeInsets.only(top: 10)),
            ForgotPassword(),
            bottomDisplay(),
          ],
        ),
      ),
    );
  }

  bottomDisplay() {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              // mainAxisSize: MainAxisSize.max,
              children: [
                FacebookButton(),
                GoogleButton(),
              ],
            ),
            PolicyText(),
          ],
        ),
      ),
    );
  }

}
