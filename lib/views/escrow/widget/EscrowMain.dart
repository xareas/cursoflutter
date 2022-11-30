import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/components.dart';
import 'package:makers_wallet/views/escrow/EscrowController.dart';

class EscrowMain extends GetView<EscrowController> {
  const EscrowMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
          painter: MakerHeader(),
          child: Column(children: [
            const SizedBox(
              height: 20.0,
            ),
            Row(
                children:  [
                  Padding(
                      padding: const EdgeInsets.only(right: 130), child: MakerUserCircle(userName: controller.userName,)),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Expanded(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )),
                ]
            ),
            GetBuilder<EscrowController>(
              id: "monto",
              builder: (value) => Text(controller.monto,
                  style: const TextStyle(color: Colors.white, fontSize: 25)),
            ),
            GetBuilder<EscrowController>(
                id: "fondo",
                builder: (value) => Text(controller.fondo,
                    style: const TextStyle(color: Colors.cyan, fontSize: 20))),
            const SizedBox(height: 60.0,),
            const EscrowList() ,
            //Boton de Invierte

          ]),
        ));
  }
}
