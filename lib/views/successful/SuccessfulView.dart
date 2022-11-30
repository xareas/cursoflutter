import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/themes/MakersTheme.dart';
import 'package:makers_wallet/views/successful/SuccessfullController.dart';
import 'widget/Successfull_Widget.dart';

class SucessfulView extends GetView<SuccessfullController> {
  const SucessfulView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Successfull_Widget()),
      ),
    );
  }
}
