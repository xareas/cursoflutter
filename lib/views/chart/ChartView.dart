import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/views/chart/ChartController.dart';
import 'widget/Chart_Widget.dart';

class ChartView extends GetView<ChartController> {
  const ChartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<ChartController>(
      id: "main",
      builder: (controller) => controller.loading
          ? const Scaffold(body: Center(child: CircularProgressIndicator()))
          : const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Scaffold(body: Center(child: ChartWidget())),
      )
    );

  }
}
