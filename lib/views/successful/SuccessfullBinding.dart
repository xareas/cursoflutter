import 'package:get/get.dart';
import 'package:makers_wallet/views/successful/SuccessfullController.dart';
import 'package:makers_wallet/views/views.dart';

class SuccessfullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessfullController>(() => SuccessfullController());
  }
}
