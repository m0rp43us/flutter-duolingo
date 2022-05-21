import 'package:flutter/material.dart';

class CoursePopup extends StatelessWidget {
  final Color color;

  const CoursePopup({required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      borderOnForeground: false,
      semanticContainer: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 270,
        height: 220,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

// Card(
// child: Padding(
// padding: const EdgeInsets.all(16.0),
// child: Material(
// borderRadius: BorderRadius.circular(16),
// color: Colors.yellow,
// child: SizedBox(
// child: Padding(
// padding: const EdgeInsets.all(16.0),
// child: SingleChildScrollView(
// child: Column(
// mainAxisSize: MainAxisSize.min,
// children: [
// const SizedBox(
// height: 8,
// ),
// Container(
// margin: const EdgeInsets.all(8),
// decoration: BoxDecoration(
// color: Colors.black12,
// borderRadius: BorderRadius.circular(8),
// ),
// child: const TextField(
// maxLines: 8,
// cursorColor: Colors.white,
// decoration: InputDecoration(
// contentPadding: EdgeInsets.all(8),
// hintText: 'Write a note...',
// border: InputBorder.none),
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// ),
// ),
// );




// showDialog(
//   useSafeArea: false,
//   barrierColor: Colors.transparent,
//   context: context,
//   builder: (BuildContext context) {
//     return
//       // SimpleDialog(
//       // insetPadding: EdgeInsets.only(bottom: 50),
//       // children: [
//         Align(
//           child: CoursePopup(
//             color: color ?? const Color(0xFF2B70C9),
//           ),
//         );
//       // ],
//     // );
//   },
// );
// Navigator.of(context).push(
//   DialogRoute(
//     barrierColor: Colors.transparent,
//     // useSafeArea: false,
//     context: context,
//     builder: (BuildContext context) {
//       return Center(
//         child: CoursePopup(
//           color: color ?? const Color(0xFF2B70C9),
//         ),
//       );
//     },
//   ),
// );