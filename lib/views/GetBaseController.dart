import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:makers_wallet/configuration/AppLocale.dart';
import 'package:makers_wallet/infrastructure/StorageService.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';

abstract class GetBaseController extends GetxController {

  String get userName  {
    final storage = Get.find<StorageService>();
    return storage.userName ?? "Invitado";
  }

  int get userId  {
    final storage = Get.find<StorageService>();
    return storage.userId ?? 0;
  }

  String formatCurrency(double mount){
    var formatCurrency = NumberFormat.currency(locale: AppLocale.defaultLocale,
        symbol: "");
    return formatCurrency.format(mount);
  }

  String formatCurrencyWithSymbol(double mount){
    var formatCurrency = NumberFormat.currency(locale: AppLocale.defaultLocale,
        symbol: AppLocale.currencySymbol);
    return formatCurrency.format(mount);
  }


  void showError(String msg) {
    Get.snackbar("Error API", msg,
        icon: const Icon(
          Icons.error_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.redAccent,
        colorText: Colors.white);
  }

  void showInfo(String msg) {
    Get.snackbar("Maker's Wallet", msg,
        icon: const Icon(
          Icons.info_outline,
          color: Colors.white,
        ),
        backgroundColor: ColorsMakers.accentColor,
        colorText: Colors.white);
  }

}