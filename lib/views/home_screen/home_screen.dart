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
    return const Scaffold(
      appBar: StatAppBar(),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
