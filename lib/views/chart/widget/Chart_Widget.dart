import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/components.dart';
import 'package:makers_wallet/views/chart/ChartController.dart';
import 'package:sizer/sizer.dart';
import 'FundsList.dart';
import 'package:pie_chart/pie_chart.dart';

class ChartWidget extends GetView<ChartController> {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    /* Map<String, double> dataMap = {
      "Universal Liquidez": 66.67,
      "Renta Valores": 17.01,
      "Renta Futuro": 16.33,
    };*/
    List<Color> colorList = [
      Colors.grey,
      Colors.cyan,
      Colors.green,
    ];
    return SafeArea(
      child: CustomPaint(
        painter: MakerHeader.create(percentWidth: 0.2, percentLine: 0.16),
        child: //AREA DEL CONTENIDO
            Column(children: [
          Row(
            children: [
              GetBuilder<ChartController>(
                  id: "user",
                  builder: (value) =>
                      MakerUserCircle(userName: controller.userName)),
              //const MakerUserCircle(userName: "Makers"),
              SizedBox(width: 35.w),
              const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 6.h),
          GetBuilder<ChartController>(
              id: "chart",
              builder: (value) {
                if (controller.dataMap.isNotEmpty) {
                  return PieChart(
                    dataMap: controller.dataMap,
                    animationDuration: const Duration(milliseconds: 800),
                    chartLegendSpacing: 32,
                    chartRadius: MediaQuery.of(context).size.width / 2,
                    colorList: colorList,
                    initialAngleInDegree: 0,
                    chartType: ChartType.disc,
                    ringStrokeWidth: 32,
                    legendOptions: const LegendOptions(
                      showLegendsInRow: false,
                      legendPosition: LegendPosition.right,
                      showLegends: false,
                    ),
                    chartValuesOptions: const ChartValuesOptions(
                        showChartValues: true,
                        showChartValuesInPercentage: false,
                        decimalPlaces: 1,
                        showChartValueBackground: false),
                  );
                } else {
                  return const Text("NO DATA");
                }
              }),
          const Expanded(child: FundsList()),
          Container(
            width: 190,
            padding: EdgeInsets.only(bottom: 10.h),
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                controller.gotoViewInvest();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return const Color(
                        0xFF2E2C78); // Use the component's default.
                  },
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Invierte",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
