import 'package:flutter/material.dart';
import 'widget/Payment_Widget.dart';
import 'package:makers_wallet/themes/MakersTheme.dart';
import 'package:makers_wallet/views/payment/PaymentController.dart';
import 'package:get/get.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Payment_Widget(),
        ),
      ),
    );
  }
}
