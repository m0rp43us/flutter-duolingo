// import 'package:flutter/material.dart';
//
// class LoginButton extends StatefulWidget {
//   const LoginButton({Key? key}) : super(key: key);
//
//   @override
//   State<StatefulWidget> createState() {
//     return LoginButtonState();
//   }
// }
//
// class LoginButtonState extends State<LoginButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 50,
//       margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//       padding: const EdgeInsets.only(bottom: 2),
//       child: ElevatedButton(
//         child: const Text(
//           'SIGN IN',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         style: ElevatedButton.styleFrom(
//           primary: const Color(0xFF1CB0F6),
//           elevation: 5,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//         ),
//         onPressed: loginPressed,
//       ),
//     );
//   }
//
//   loginPressed() {
//     String userId = '';
//
//       auth.login(txtUserName.text, txtPassword.text).then((value) {
//         if (value == null) {
//           setState(() {
//             _message = 'Login Error';
//           });
//         } else {
//           userId = value;
//           setState(() {
//             _message = 'User $userId successfully logged in';
//           });
//         }
//       });
//
//   }
// }
//
// ////// create user
// // else {
// // auth.createUser(txtUserName.text, txtPassword.text).then((value) {
// // if (value == null) {
// // setState(() {
// // _message = 'Registration Error';
// // });
// // } else {
// // userId = value;
// // setState(() {
// // _message = 'User $userId successfully signed in';
// // });
// // }
// // });
// // };