import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AccountAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 120,
      backgroundColor: Colors.white,
      elevation: 1.5,
      leading: flag(),
      actions: [
        heart(),
      ],
    );
  }

  Widget heart() {
    return Row(
      children: [
        Image.asset(
          'assets/images/heart.png',
          width: 36,
        ),
        const Padding(
          padding: EdgeInsets.all(2),
        ),
        Image.asset('assets/images/infinity.png', width: 20),
        const Padding(
          padding: EdgeInsets.all(5),
        ),
      ],
    );
  }


  Widget flag() {
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 18, bottom: 18),
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/images/korea-flag-transparent.png'),
          // fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 2.5,
          color: const Color(0xFFE5E5E5),
        ),
        color: Colors.grey.shade100,
      ),
      child: null /* add child content here */,
    );
  }
}
