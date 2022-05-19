import 'package:duolingo/views/course_screen/course_tree.dart';
import 'package:duolingo/views/home_screen/components/leaderboard_app_bar.dart';
import 'package:duolingo/views/home_screen/components/stat_app_bar.dart';
import 'package:duolingo/views/home_screen/components/bottom_navigator.dart';
import 'package:duolingo/views/leaderboard_screen/leaderboard_screen.dart';
import 'package:duolingo/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

import 'components/profile_app_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    final screens = [
      CourseTree(),
      ProfileScreen(),
      LeaderboardScreen(),
    ];

    final List<PreferredSizeWidget> appBars = [
      StatAppBar(),
      ProfileAppBar(),
      LeaderboardAppBar()
    ];

    return Scaffold(
      appBar: appBars[currentIndex],
      bottomNavigationBar: BottomNavigator(currentIndex: currentIndex, onPress: onBottomNavigatorTapped),
      body: screens[currentIndex],
      );
  }

  void onBottomNavigatorTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }


}
