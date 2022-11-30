import 'package:get/get.dart';

class SuccessfullController extends GetxController {
  late String bankName;
  late String fundName;
  late String amount;
  @override
  void onInit() {
    bankName = Get.arguments[0];
    fundName = Get.arguments[1];
    amount = Get.arguments[2];
  }
}
