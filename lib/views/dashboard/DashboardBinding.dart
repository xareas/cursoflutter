import 'package:get/get.dart';
import 'package:makers_wallet/views/escrow/EscrowController.dart';
import 'package:makers_wallet/views/views.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ChartController>(() => ChartController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<EscrowController>(() => EscrowController());
  }
}
