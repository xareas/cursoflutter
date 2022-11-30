
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/components.dart';
import 'package:makers_wallet/views/invest/InvestController.dart';
import 'package:makers_wallet/views/invest/widget/FormContent.dart';
import 'package:sizer/sizer.dart';

class InvestWidget extends GetView<InvestController> {
  const InvestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.loading.value) {
        return const Center(child: CircularProgressIndicator());
      } else {

        return SafeArea(
          child: CustomPaint(
            painter: MakerHeader.create(percentWidth: 0.2, percentLine: 0.18),
            child:
            //AREA DEL CONTENIDO
            Column(
              children:  [
                MakerUserCircle(
                  userName: controller.userName,
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
                const Flexible(
                    child: FormContent()
                )
              ],
            ),
          ),

        );
      }
    });
  }
}
