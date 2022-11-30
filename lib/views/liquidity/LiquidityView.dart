import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/themes/MakersTheme.dart';
import 'package:makers_wallet/views/liquidity/LiquidityController.dart';

class LiquidityView extends GetView<LiquidityController> {
  const LiquidityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text("LIQUID VIEW - WELCOME",
              style: MakersTheme.lightTextTheme.titleLarge),
        ),
      ),
    );
  }
}
