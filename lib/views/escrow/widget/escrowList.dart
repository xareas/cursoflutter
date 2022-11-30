import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';
import 'package:makers_wallet/views/escrow/EscrowController.dart';

/*
    

 */
class EscrowList extends GetView<EscrowController> {

  const EscrowList({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GetBuilder<EscrowController>(
        id: "list" ,
        builder: (value) {
          return ListView.builder(
               scrollDirection: Axis.vertical,
               itemCount: controller.scrows.length,
               itemBuilder: (context,index) {
                     return Card(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                       elevation: 1.0,
                       child: ListTile(
                         leading:const Icon(Icons.monetization_on, color: ColorsMakers.primaryText,),
                         title: Text(controller.scrows[index].name),
                         subtitle:Text(controller.formatCurrency(controller.scrows[index].value)) ,
                         trailing: const Icon(Icons.keyboard_arrow_right),
                         onTap: (){
                           controller.showMessage();
                         },
                       ),
                     );
                }
            );
        }
      ),
    );
  }
}


