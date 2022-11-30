import 'package:get/get.dart';
import 'package:makers_wallet/views/views.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}
