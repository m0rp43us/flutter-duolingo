import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CourseNode extends StatelessWidget {
  final String name;
  final String image;

  const CourseNode(this.name, this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: 2.7,
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 10.0,
                    percent: 0.25,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: const Color(0xFFFFC800),
                    backgroundColor: Colors.grey.shade300,
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xFFB66E28), //Color(0xFF1CB0F6),
                  radius: 40,
                ),
                Image.asset(
                  image,
                  width: 42,
                ),
                Positioned(
                  right: 0,
                  bottom: 5,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/images/crown.png', width: 40),
                      const Text(
                        '2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color(0xFFB66E28),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Text(name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      ],
    );
  }
}
