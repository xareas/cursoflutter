import 'package:flutter/material.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';

class MakerHeader extends CustomPainter {

  late double percentWidth;
  late double percentLine;

  MakerHeader() {
    percentWidth = 0.3;
    percentLine = 0.25;
  }

  MakerHeader.create({required this.percentWidth, required this.percentLine})
      :assert(percentWidth > 0 && percentWidth<=1),
       assert(percentLine > 0 && percentLine<=1),
       assert(percentLine <= percentWidth);

  @override
  void paint(Canvas canvas, Size size) {
    final pen = Paint();

    pen.color = ColorsMakers.primary;
    pen.strokeWidth = 10;
    pen.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height * percentWidth);
    path.lineTo(size.width, size.height * percentLine);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawShadow(path, Colors.grey.withAlpha(50), 4.0, false);
    canvas.drawPath(path, pen);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}