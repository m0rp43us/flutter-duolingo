import 'package:duolingo/views/home_screen/components/course_node.dart';
import 'package:duolingo/views/home_screen/components/stat_app_bar.dart';
import 'package:duolingo/views/home_screen/components/bottom_navigator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StatAppBar(),
      bottomNavigationBar: const BottomNavigator(),
      body: Column(
        children: [
          CourseNode('Basic 1', 'assets/images/egg.png'),
        ],
      ),
    );
  }
}
