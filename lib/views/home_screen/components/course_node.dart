import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CourseNode extends StatelessWidget {
  final String name;
  String? image;
  Color? color;
  int? crown;
  double? percent;

  CourseNode(this.name, {this.image, this.color, this.crown, this.percent, Key? key})
      : super(key: key);

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
                    radius: 55.0,
                    lineWidth: 10.0,
                    percent: percent ?? 0,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: const Color(0xFFFFC800),
                    backgroundColor: Colors.grey.shade300,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: color ?? const Color(0xFFB66E28), //Color(0xFF1CB0F6),
                  radius: 37,
                ),
                Image.asset(
                  image ?? 'assets/images/egg.png',
                  width: 42,
                ),
                Positioned(
                  right: 0,
                  bottom: 5,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset('assets/images/crown.png', width: 40),
                      Text(
                        '${crown == null || crown == 0 ? '' : crown}',
                        style: const TextStyle(
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
