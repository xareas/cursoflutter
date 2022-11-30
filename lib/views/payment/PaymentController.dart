import 'package:get/get.dart';
import 'package:makers_wallet/routes/AppRoutes.dart';
import 'package:makers_wallet/services/BankService.dart';
import 'package:makers_wallet/models/Bank.dart';

import '../GetBaseController.dart';

class PaymentController extends GetBaseController {
  late String bankName;
  late String fundName;
  late String amount;
  @override
  void onInit() {
    bankName = Get.arguments[0];
    fundName = Get.arguments[1];
    amount = formatCurrency(Get.arguments[2] as double);
  }

  Future<List<Bank>?> getAllBanks() {
    BankService service = BankService();
    return service.getAll();
  }

  void submit() async {
    Get.delete<PaymentController>();
    Get.toNamed(AppRoutes.success, arguments: [bankName, fundName, amount]);
  }
}
