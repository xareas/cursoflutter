import 'package:flutter/material.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';

class HeaderPainter extends CustomPainter {
  final double maxHeigtPercent;

  HeaderPainter(this.maxHeigtPercent);
  @override
  void paint(Canvas canvas, Size size) {

    
    var paint = Paint()
    ..color = ColorsMakers.primary
    ..strokeCap = StrokeCap.round
    ..blendMode = BlendMode.darken
    ..style = PaintingStyle.fill
    ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(createPath(size), paint);
  }

  Path createPath(Size size) {
    var realMaxHeightPercent = maxHeigtPercent / 100;
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * (realMaxHeightPercent*0.6));
    path.lineTo(0, size.height * realMaxHeightPercent);
    path.lineTo(0, 0);
    path.close();    
    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return true;
  }


}