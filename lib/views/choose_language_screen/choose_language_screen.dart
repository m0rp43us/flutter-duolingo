import 'package:duolingo/views/choose_language_screen/components/app_bar.dart';
import 'package:flutter/material.dart';

import 'components/stage_progress_bar.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChooseLanguageAppbar(),
      body: Text(''),
    );
  }
}
