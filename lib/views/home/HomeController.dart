import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/routes/AppRoutes.dart';
import 'package:makers_wallet/views/GetBaseController.dart';
import 'package:makers_wallet/views/invest/InvestController.dart';
class HomeController extends GetBaseController  {


  String getTotalMount(){
    double totalMonto = 187600.00;
    return formatCurrency(totalMonto);
  }

  void onTapInvierte() {
    Get.delete<InvestController>();
    Get.toNamed(AppRoutes.invest);
  }


}