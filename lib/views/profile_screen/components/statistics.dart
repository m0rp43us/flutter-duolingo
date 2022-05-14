import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.all(10),
              child: const Text(
                'Statistics',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4B4B4B),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: (1 / .4),//2.55,
              children: [
                statBox('assets/images/streak.png', '34', 'Day Streak'),
                statBox('assets/images/electric.png', '1770', 'Total XP'),
                statBox('assets/images/pearl.png', 'Pearl', 'Current League'),
                statBox('assets/images/chest.png', '7', 'Top 3 Finishes'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  statBox(String iconImage, String record, String label) {
    return Container(
      padding: const EdgeInsets.only(left: 12, top: 8, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2.5,
          color: const Color(0xFFE5E5E5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                iconImage,
                width: 24,
              ),
              const Padding(
                padding: EdgeInsets.all(7),
              ),
              Text(
                record,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4B4B4B),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 38)),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFAFAFAF),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
