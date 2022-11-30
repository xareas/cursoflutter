import 'package:flutter/material.dart';
import 'package:makers_wallet/views/payment/PaymentController.dart';
import 'package:makers_wallet/models/Bank.dart';
import 'package:get/get.dart';

class Payment_Widget extends GetView<PaymentController> {
  const Payment_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: const Text(
            "Transferencias",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          backgroundColor: const Color.fromARGB(255, 130, 20, 119),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 200),
              child: Icon(
                Icons.qr_code,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: getBanks());
  }

  Widget getBanks() {
    return FutureBuilder(
      future: controller.getAllBanks(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Expanded(
                  child: ListView(
                      padding: const EdgeInsets.only(right: 5, top: 30),
                      children: buildBanks(snapshot.data ?? []))),
              Padding(
                  padding: const EdgeInsets.only(bottom: 400),
                  child: Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Container(
                      constraints: const BoxConstraints(maxHeight: 160),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RichText(
                                text: const TextSpan(
                                    text: "¡Transacción Exítosa! \n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                        color: Colors.black87,
                                        wordSpacing: 1))),
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text:
                                        "Se realizo la transferencia de RD\$ ${controller.amount} exitosamente a la cuenta 167-120308-73  de ${controller.bankName}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.black87,
                                        wordSpacing: 1))),
                            TextButton(
                                onPressed: controller.submit,
                                child: const Text(
                                  "OK",
                                  style: TextStyle(color: Colors.cyan),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          );
        } else {
          return Center(
              child: Row(children: const [
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Cargando...'),
            ),
          ]));
        }
      },
    );
  }

  List<Widget> buildBanks(List<Bank> banks) {
    List<Widget> toReturn = [];
    for (var element in banks) {
      Container container = Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.account_balance),
              Text(element.name),
              const Icon(Icons.arrow_right)
            ],
          ));
      toReturn.add(container);
    }
    return toReturn;
  }
}
