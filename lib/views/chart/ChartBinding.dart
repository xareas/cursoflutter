import 'package:get/get.dart';
import 'package:makers_wallet/views/escrow/EscrowController.dart';
import 'package:makers_wallet/views/views.dart';

class ChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChartController>(() => ChartController());
  }
}