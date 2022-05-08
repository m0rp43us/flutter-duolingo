import 'package:duolingo/views/home_screen/components/course_node.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DoubleCourseNode extends StatelessWidget {
  final CourseNode node1;
  final CourseNode node2;

  const DoubleCourseNode(this.node1, this.node2, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        node1,
        const Padding(padding: EdgeInsets.all(20)),
        node2,
      ],
    );
  }
}
