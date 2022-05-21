import 'package:duolingo/views/lesson_screen/components/bottom_button.dart';
import 'package:duolingo/views/lesson_screen/components/grid_lesson.dart';
import 'package:duolingo/views/lesson_screen/components/lesson_app_bar.dart';
import 'package:duolingo/views/lesson_screen/components/list_lesson.dart';
import 'package:flutter/material.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LessonScreenState();
  }
}

class LessonScreenState extends State<LessonScreen> {
  double percent = 0.2;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var lessons = [
      GridLesson(checkButton: bottomButton(context, 'CHECK')),
      ListLesson('Translate the sentence', 'Tôi là học sinh.',
          ['I am a chicken.', 'I\'m a student.', 'They are a student.'],
          checkButton: bottomButton(context, 'CHECK')),
      ListLesson('Translate the sentence', 'Xin chào.',
          ['Hello.', 'My name is Duolingo.', 'What is your name?'],
          checkButton: bottomButton(context, 'CHECK')),
      ListLesson('Choose an appropriate response', 'Bạn tên gì?',
          ['Tôi tên là Duolingo.', 'Tôi học lớp 2.', 'Tôi không biết.'],
          checkButton: bottomButton(context, 'CHECK')),
      ListLesson('Translate the sentence', 'Bye.',
          ['Tôi ổn.', 'Tạm biệt.', 'Ngủ ngon.'],
          checkButton: bottomButton(context, 'CHECK')),
    ];

    return Scaffold(
      appBar: LessonAppBar(percent: percent),
      body: lessons[index],
    );
  }

  bottomButton(BuildContext context, String title) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (percent < 1) {
                percent += 0.2;
                index++;
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return dialog('Great job');
                  },
                );
              }
            });
          },
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFF58CC02),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  dialog(String title) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFd7ffb8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            dialogTitle(title),
            BottomButton(context, title: 'CONTINUE'),
          ],
        ),
      ),
    );
  }

  dialogTitle(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 15),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF43C000),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
