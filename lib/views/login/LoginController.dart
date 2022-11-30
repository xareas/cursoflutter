import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/MakersDialogs.dart';
import 'package:makers_wallet/routes/AppRoutes.dart';
import 'package:makers_wallet/infrastructure/infrastructure.dart';
import 'package:makers_wallet/models/models.dart';
import 'package:makers_wallet/services/AuthService.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';
import 'package:makers_wallet/themes/Texts.dart';

class LoginController extends GetxController {
  var userName = "".obs ;
  var passWord = "".obs ;

  Future<void> onLoginEvent(BuildContext context) async {
    MakerProgressDialog.show(context);
    if (await _login()) {
      Get.offAllNamed(AppRoutes.dashboard);
    } else {
      _showError();
      MakerProgressDialog.dissmiss(context);
    }
  }

  Future<bool> _login() async{
    final result = await AuthService().login(
        UserTokenRequest(username: userName.value,
            password: passWord.value));
    if(result != null){
      final storage = Get.find<StorageService>();
      storage.saveProfile(result);
      return true;
    }
    return false;
  }

  void _showError(){
    Get.snackbar(
      TextsWallet.titleLabel,
      TextsWallet.errlogin,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: ColorsMakers.accentColor,
      icon: const Icon(Icons.error_rounded),
    );

  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    userName.close();
    passWord.close();
  }

  @override
  void onReady() {
    super.onReady();
  }
}