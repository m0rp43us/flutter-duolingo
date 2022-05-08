import 'package:duolingo/views/home_screen/components/course_node.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TripleCourseNode extends StatelessWidget {
  final CourseNode node1;
  final CourseNode node2;
  final CourseNode node3;

  const TripleCourseNode(this.node1, this.node2, this.node3, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        node1,
        const Padding(padding: EdgeInsets.all(5)),
        node2,
        const Padding(padding: EdgeInsets.all(5)),
        node3,
      ],
    );
  }
}
