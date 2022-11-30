import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/components.dart';
import 'package:makers_wallet/views/escrow/EscrowController.dart';
import 'package:makers_wallet/views/escrow/widget/EscrowMain.dart';

/*
    1- Crear el objeto para esta view
        propiedades:
                Fondo: Nombre-Valor(total del valor de los encargos)
                Lista de encargos( se debera hacer la coneccion con el escrowList)
    2- Crear el componente de la campanita

    3- Crear el componente de la barra superior(usercircle + campanita)
 */
class EscrowView extends GetView<EscrowController> {
  const EscrowView({super.key});

  @override
  Widget build(BuildContext context) {
   return GetBuilder<EscrowController>(
     id: "main",
      builder: (controller) => controller.loading
          ? const Scaffold(body: Center(child: CircularProgressIndicator()))
          : const EscrowMain(),
    );

  }
}
