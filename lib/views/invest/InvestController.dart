import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/models/escrow.dart';
import 'package:makers_wallet/routes/AppRoutes.dart';
import 'package:makers_wallet/services/services.dart';
import 'package:makers_wallet/views/GetBaseController.dart';
import 'package:makers_wallet/views/chart/ChartController.dart';
import 'package:makers_wallet/views/chart/widget/FundsList.dart';
import 'package:makers_wallet/views/dashboard/DashboardView.dart';
import 'package:makers_wallet/views/escrow/EscrowController.dart';
import 'package:makers_wallet/models/Bank.dart';
import 'package:makers_wallet/models/Fund.dart';

class InvestController extends GetBaseController {
  //todo: en el futuro revisar como inyectar esto
  final BankService bankService = BankService();
  final FundService fundService = FundService();
  final OperationService operationService = OperationService();

  int? selectedBank;
  int? selectedFund;
  int? selecteOperation;

  var loading = true.obs;
  double monto = 0;
  String objetivo = "";
  var banks = <DropdownMenuItem<int>>[].obs;
  var funds = <DropdownMenuItem<int>>[].obs;
  var operations = <DropdownMenuItem<int>>[].obs;

  late List<Bank> banksList = [];
  late List<Fund> fundsList = [];

  @override
  void onInit() async {
    super.onInit();
    Future.wait([_loadBanks(), _loadOperations(), _loadFund()]).then((value) {
      loading.value = false;
    }).catchError((err) {
      _showError("Se produjo un error al cargar los datos,revise el log");
    });
  }

  @override
  void onClose() {
    super.onClose();
    banks.close();
    funds.close();
    operations.close();
    loading.close();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> _loadBanks() async {
    var result = await bankService.getAll();
    var model = result ?? [];
    banksList = model;
    banks.value = model
        .map((e) => DropdownMenuItem(value: e.bankid, child: Text(e.name)))
        .toList();
  }

  Future<void> _loadOperations() async {
    operationService.getAll().then((result) {
      var model = result ?? [];
      operations.value = model
          .map((e) =>
              DropdownMenuItem(value: e.operationid, child: Text(e.name)))
          .toList();
    });
  }

  Future<void> _loadFund() async {
    fundService.getAll().then((result) {
      var model = result ?? [];
      fundsList = model;
      funds.value = model
          .map((e) => DropdownMenuItem(value: e.fundid, child: Text(e.name)))
          .toList();
    });
  }

  void submit() async {
    loading.value = true;
    var escrow = Escrow(
        name: objetivo,
        value: monto,
        date: DateTime.now(),
        operationid: selecteOperation ?? 1,
        fundid: selectedFund ?? 1,
        appuserid: userId);
    ScrowService().createOrUpdate(escrow);

    Get.delete<EscrowController>();
    Get.delete<ChartController>();
    String bankName =
        banksList.where((element) => element.bankid == selectedBank).first.name;
    String fundName =
        fundsList.where((element) => element.fundid == selectedFund).first.name;
    Get.toNamed(AppRoutes.payment, arguments: [bankName, fundName, monto]);
  }

  void cancel() {
    Get.offAll(const DashboardView());
  }

  void _showError(String msg) {
    showError(msg);
  }
} //fin clas
