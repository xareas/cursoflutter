import 'package:get/get.dart';
import 'package:makers_wallet/models/escrow.dart';
import 'package:makers_wallet/routes/AppRoutes.dart';
import 'package:makers_wallet/services/ScrowService.dart';
import 'package:makers_wallet/views/views.dart';


class EscrowController extends GetBaseController {

  late String fondo  = "Fondo Universal";
  final String objetivo  = "Maestria";
  late String monto = "RD\$ 0.0";
  var scrows = <Escrow>[];
  var loading = true ;

  void gotoInvest(){
    Get.delete<InvestController>();
    Get.toNamed(AppRoutes.invest);
  }


  @override
  void onInit()  {
    super.onInit();
    _loadData();
  }

  @override
  void onReady(){
    super.onReady();
  }

  void _loadData() async {
     scrows  = await ScrowService().getAll();
     var total = scrows.map((e) => e.value).reduce((value, element) => value + element);

     fondo = "Fondo universal";
     monto = formatCurrency(total);
     loading = false;
     update(["main"]);
     //"fondo","monto","list"
  }
  void showMessage(){
    showInfo("Carateristica en desarrollo");
  }
}