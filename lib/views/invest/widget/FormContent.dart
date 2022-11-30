import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/components.dart';
import 'package:makers_wallet/themes/MakersTheme.dart';
import 'package:makers_wallet/themes/Texts.dart';
import 'package:makers_wallet/views/invest/InvestController.dart';
import 'package:sizer/sizer.dart';

class FormContent extends GetView<InvestController> {
  const FormContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
      child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Obx(() {
                return MakerDropDown(
                    value: controller.selectedFund,
                    items: controller.funds.value,
                    labelText: "Fondo",
                    hintText: "Seleccione el Fondo",
                    icon: const Icon(Icons.monetization_on),
                    onChange: (e) {
                      controller.selectedFund = e;
                    });
              }),
              const SizedBox(
                height: 10.0,
              ),
              Obx(() {
                return MakerDropDown(
                    value: controller.selecteOperation,
                    items: controller.operations.value,
                    labelText: "Operacion",
                    hintText: "Seleccione la operacion",
                    icon: const Icon(Icons.money),
                    onChange: (e) {
                      controller.selectedBank = e;
                    });
              }),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                  onChanged: (e) {
                    controller.monto = double.parse(e);
                  },
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    labelText: 'Valor',
                    labelStyle: TextStyle(fontSize: 18),
                    hintText: 'Monto en RD\$',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(
                      Icons.money,
                      color: Colors.black,
                      size: 18,
                    ),
                  )),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                  onChanged: (e) {
                    controller.objetivo = e.trim();
                  },
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(fontSize: 18),
                    labelText: 'Objetivo',
                    hintText: 'Objetivo Maestria..etc',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(
                      Icons.info,
                      color: Colors.black,
                      size: 18,
                    ),
                  )),
              const SizedBox(
                height: 10.0,
              ),
              Obx(() {
                return MakerDropDown(
                    value: controller.selectedBank,
                    items: controller.banks.value,
                    labelText: "Banco",
                    hintText: "Seleccione el Banco",
                    icon: const Icon(Icons.account_balance),
                    onChange: (e) {
                      controller.selectedBank = e;
                    });
              }),
              const SizedBox(
                height: 50.0,
              ),
              //todo: candidato a volverse un componente
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.submit();
                    },
                    child: Text(TextsWallet.invest,
                        style: MakersTheme.darkTextTheme.headline3),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.submit();
                    },
                    child: Text(TextsWallet.cancel,
                        style: MakersTheme.darkTextTheme.headline3),
                  )
                ],
              )
            ],
          )),
    );
  }
}
