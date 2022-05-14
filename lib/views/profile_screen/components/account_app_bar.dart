import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AccountAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 120,
      backgroundColor: Colors.white,
      elevation: 1.5,
      leading: account(),
      leadingWidth: 100,
      centerTitle: false,
      actions: [
        avatar(),
      ],
    );
  }

  Widget avatar() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/images/profile.jpg'),
        radius: 37,
      ),
    );
  }

  Widget account() {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Vince',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4B4B4B),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'marcusvince',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFFAFAFAF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
