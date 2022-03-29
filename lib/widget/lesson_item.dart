import 'package:flutter/material.dart';
class LessonItem extends StatelessWidget {
  final String title;
  const LessonItem ({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
        style: const TextStyle(fontSize: 20, color: Colors.brown, fontWeight: FontWeight.bold),
          )
        ],
      )
    );
  }
}
