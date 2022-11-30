import 'package:flutter/material.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';

class LoginPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    
    var paint = Paint()
    ..color = ColorsMakers.skyblue
  
    ..strokeCap = StrokeCap.round
    ..blendMode = BlendMode.src
    ..style = PaintingStyle.fill
    ..strokeJoin = StrokeJoin.bevel;
    canvas.drawPath(createPath(size), paint);
  }

  Path createPath(Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(0, size.height / 3);
    path.lineTo(0, 0);
    path.close();    
    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }


}