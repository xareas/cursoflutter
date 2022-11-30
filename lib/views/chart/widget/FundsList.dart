import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/views/chart/ChartController.dart';
import 'package:sizer/sizer.dart';

class FundsList extends GetView<ChartController> {
  const FundsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      children: controller.listWidgetResum,
    );
  }
}

class FundsListItem extends StatelessWidget {
  String fundname = "";
  String fundvalue = "";
  Color fundcolor = Colors.green;
  FundsListItem(
      {super.key,
      required this.fundname,
      required this.fundvalue,
      required this.fundcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 3.w,
                  height: 3.h,
                  decoration:
                      BoxDecoration(color: fundcolor, shape: BoxShape.circle),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(fundname),
                ),
                Expanded(
                    child: Align(
                  alignment: FractionalOffset.centerRight,
                  child: Text(fundvalue),
                ))
              ],
            )
          ],
        ));
  }
}

class FundsListItemTotal extends StatelessWidget {
  String fundTotal = "";
  FundsListItemTotal({super.key, required this.fundTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "TOTAL",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Expanded(
                    child: Align(
                  alignment: FractionalOffset.centerRight,
                  child: Text(fundTotal,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                ))
              ],
            )
          ],
        ));
  }
}
