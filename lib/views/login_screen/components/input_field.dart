import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InputFieldState();
  }
}

class InputFieldState extends State<InputField> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          accountField(),
          passwordField(),
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
}