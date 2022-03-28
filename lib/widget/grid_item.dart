import 'package:flutter/material.dart';
class GridItem extends StatelessWidget {
  final String title;
  final Icon icon;

  const GridItem({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            height: 4,
          ),
         Text(
           title,
           style: const TextStyle(fontSize: 12),
         ),
        ],
      ),
    );
  }
}
