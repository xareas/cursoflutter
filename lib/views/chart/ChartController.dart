import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/models/models.dart';
import 'package:makers_wallet/routes/AppRoutes.dart';
import 'package:makers_wallet/services/services.dart';
import 'package:makers_wallet/views/GetBaseController.dart';
import 'package:makers_wallet/views/invest/InvestController.dart';

import 'widget/FundsList.dart';

class ChartController extends GetBaseController {
  String? total;
  var resumFund = <FundResum>[];
  Map<String, double> dataMap = {};
  var listWidgetResum = <Widget>[];
  var loading = true;

  Map<int, Color> colorList = {
    1: Colors.grey,
    2: Colors.cyan,
    3: Colors.green,
  };

  void gotoViewInvest() {
    Get.delete<InvestController>();
    Get.toNamed(AppRoutes.invest);
  }

  @override
  void onInit() {
    super.onInit();
    _loadData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void _loadData() async {
    resumFund = await FundService().getResumFundByUser(userId) ?? [];
    double chartSum = sum(resumFund);
    for (var c in resumFund) {
      dataMap[c.fundname ?? ""] = (c.mount / chartSum) * 100;
    }

    var monto = resumFund
        .map((e) => e.mount)
        .reduce((value, element) => value + element);
    total = formatCurrency(monto);
    _listWidget();
    loading = false;
    update(["main"]);
    //"user","chart","list"
  }

  double sum(List<FundResum> resum) {
    double resultsum = 0;
    for (var element in resum) {
      resultsum += element.mount.toDouble();
    }

    return resultsum;
  }

  void showMessage() {
    showInfo("Carateristica en desarrollo");
  }

  void _listWidget() {
    int count = 1;
    for (var element in resumFund) {
      listWidgetResum.add(
        FundsListItem(
          fundname: element.fundname ?? "",
          fundvalue: formatCurrency(element.mount),
          fundcolor: colorList[count] ?? Colors.grey,
        ),
      );
      count += 1;
    }

    listWidgetResum.add(FundsListItemTotal(fundTotal: total ?? "0.00"));
  }
}
