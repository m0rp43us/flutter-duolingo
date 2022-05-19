import 'package:duolingo/views/profile_screen/components/account_app_bar.dart';
import 'package:duolingo/views/profile_screen/components/achievements.dart';
import 'package:duolingo/views/profile_screen/components/friend_suggestions.dart';
import 'package:duolingo/views/profile_screen/components/friend_updates.dart';
import 'package:duolingo/views/profile_screen/components/friends.dart';
import 'package:duolingo/views/profile_screen/components/statistics.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AccountAppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 2000,
          child: Column(
            children: const [
              Padding(padding: EdgeInsets.all(10)),
              FriendUpdates(),
              Statistics(),
              FriendSuggestions(),
              Friends(),
              Achievements(),
              // Expanded(child: Column(children: [Text('yo')],)),
            ],
          ),
        ),
      ),
    );
  }
}
