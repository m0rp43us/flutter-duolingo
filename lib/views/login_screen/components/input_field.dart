import 'package:duolingo/shared/firebase_authentication.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final FirebaseAuthentication auth;
  const InputField(this.auth, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return InputFieldState();
  }
}

class InputFieldState extends State<InputField> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;
  String txtMessage = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          accountField(),
          passwordField(),
          Text(txtMessage),
          Container(padding: EdgeInsets.all(10)),
          loginButton(),
        ],
      ),
    );
  }

  accountField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
        ),
        hintText: 'Username or email',
        // errorText: snapshot.hasError ? snapshot.error as String : null
      ),
      // validator: validateEmail,
      onChanged: (value) {
        // bloc.changeEmail(value);
      },
    );
  }

  passwordField() {
    return TextFormField(
      controller: passwordController,
      obscureText: isObscure,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            isObscure ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xFF1CB0F6),
          ),
          onPressed: () {
            isObscure = !isObscure;
            setState(() {});
          },
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
          ),
        ),
        hintText: 'Password',
      ),
      // validator: validatePassword,
    );
  }

  loginButton() {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      padding: const EdgeInsets.only(bottom: 2),
      child: ElevatedButton(
        child: const Text(
          'SIGN IN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF1CB0F6),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: loginPressed,
      ),
    );
  }

  loginPressed() {
    String userId = '';

    widget.auth.login(emailController.text, passwordController.text).then((value) {
      if (value == null) {
        setState(() {
          txtMessage = 'Login Error';
        });
      } else {
        userId = value;
        setState(() {
          txtMessage = 'User $userId successfully logged in';
        });
      }
    });

  }

}