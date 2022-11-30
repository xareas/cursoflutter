import 'package:flutter/material.dart';
import 'package:makers_wallet/components/MakerUserCircle.dart';
import 'package:sizer/sizer.dart';

class HeaderWallet extends StatelessWidget {
  const HeaderWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SafeArea(
        child: CustomPaint(
          painter: _HeaderDiagonal(),
          child: Column(
            children: [
              MakerUserCircle(
                userName: "Andres",
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: Text(
                  "Invierte",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              //Inversion()
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pen = Paint();

    pen.color = const Color(0xFF2E2C78);
    pen.strokeWidth = 10;
    pen.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height * 0.23);
    path.lineTo(size.width, size.height * 0.2);
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
