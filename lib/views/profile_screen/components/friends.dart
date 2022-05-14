import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          bigTitle('Friends'),
          Container(
            margin: const EdgeInsets.all(10),
            height: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2.5,
                color: const Color(0xFFE5E5E5),
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                friend('/assets/images/yellow.png', 'Batman', '10234'),
                friend('/assets/images/yellow.png', 'vinod', '893'),
                friend('/assets/images/yellow.png', 'Marc', '123'),
                friend('/assets/images/yellow.png', 'Marc', '2012'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  friend(String image, String name, String xp) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
        ),
      ),
      child: Row(
        children: [
          avatar(image),
          Padding(padding: EdgeInsets.all(5)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              friendName(name),
              xpAmount(xp),
            ],
          )
        ],
      ),
    );
  }

  xpAmount(String xp) {
    return Text(
      '$xp XP',
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color(0xFFAFAFAF),
      ),
    );
  }

  Widget friendName(String name) {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xFF4B4B4B),
        fontSize: 17,
      ),
    );
  }

  Widget avatar(String image) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      margin: const EdgeInsets.all(10),
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 22,
      ),
    );
  }

  bigTitle(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4B4B4B),
          ),
        ),
      ),
    );
  }
}
