import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/components.dart';
import '../SuccessfullController.dart';
import 'Face_Widget.dart';
import 'package:sizer/sizer.dart';

class Successfull_Widget extends GetView<SuccessfullController> {
  const Successfull_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomPaint(
        painter: MakerHeader.create(percentWidth: 0.2, percentLine: 0.18),
        child:
            //AREA DEL CONTENIDO
            Column(
          children: [
            const MakerUserCircle(
              userName: "Makers",
            ),
            SizedBox(
              height: 2.h,
            ),
            Center(
              child: Text(
                "Invierte",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 2.h)),
            const Face_Widget(),
            const Text(
              "Genial! Has realizado la operacion!",
              style: TextStyle(
                  color: Color.fromARGB(255, 91, 88, 189), fontSize: 15),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Text(
                  "Constitución \n ${controller.fundName} \n RD\$ ${controller.amount}",
                  style: TextStyle(
                      fontSize: 20.sp, color: const Color(0xFF2E2C78)),
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }
}
