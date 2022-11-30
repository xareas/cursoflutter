import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Face_Widget extends StatelessWidget {
  const Face_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(255, 146, 208, 80),
          border: Border.all(width: 5, color: const Color(0xFF2E2C78))),
      child: Icon(
        Icons.sentiment_satisfied_alt,
        color: Colors.white,
        size: 30.w,
      ),
    );
  }
}
