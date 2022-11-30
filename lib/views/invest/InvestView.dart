import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/views/invest/InvestController.dart';
import 'package:makers_wallet/views/invest/widget/invest_widget.dart';

class InvestView extends GetView<InvestController> {
  const InvestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InvestWidget(),
     );
  }
}
