import 'package:get/get.dart';
import 'package:makers_wallet/views/views.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
