import 'package:get/get.dart';
import 'package:makers_wallet/views/views.dart';


class InvestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvestController>(() => InvestController());
  }
}
