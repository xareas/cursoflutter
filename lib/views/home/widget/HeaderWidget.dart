import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/components.dart';
import 'package:makers_wallet/themes/MakersTheme.dart';
import 'package:makers_wallet/views/home/HomeController.dart';
import 'package:sizer/sizer.dart';

class HeaderWidget extends GetView<HomeController> {

  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
      return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SafeArea(
          child: CustomPaint(
            painter: MakerHeader(),
            child: Column(
              children: [
                MakerUserCircle(
                  userName: controller.userName,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: Text(
                    controller.getTotalMount(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Text("Accesos Rapidos",
                    style: MakersTheme.lightTextTheme.headline3),
                ),
               SingleChildScrollView(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children:  [
                     const MakerButtonIcon(icon: Icons.account_balance_wallet, title:'Recargas',disabled: true,),
                     MakerButtonIcon(icon: Icons.monetization_on,title: 'Invierte' ,
                     onTap:controller.onTapInvierte, disabled: false,),
                     const MakerButtonIcon(icon: Icons.article_rounded, title: 'Factura',disabled: true,),
                   ],
                 ),
               ),
               const SizedBox(height: 8.0,),
                Center(
                  child: Text("Otros Servicios",
                      style: MakersTheme.lightTextTheme.headline3),
                ),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      MakerButtonIcon(icon: Icons.emoji_events, title: "Metas", disabled: true),
                      MakerButtonIcon(icon: Icons.attach_money, title: "Prestamos" , disabled: true,),
                      MakerButtonIcon(icon: Icons.edgesensor_high,title:"Recarga", disabled: true,),
                      MakerButtonIcon(icon: Icons.paypal_rounded, title: "PayPal", disabled: true,),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      MakerButtonIcon(icon: Icons.map, title: "Viajes",disabled: true,),
                      MakerButtonIcon(icon: Icons.payment, title: "Pagos",disabled: true,),
                      MakerButtonIcon(icon: Icons.currency_exchange, title: "Servicios",disabled: true,),
                      MakerButtonIcon(icon: Icons.shopping_cart, title: "Compras",disabled: true,),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      );
    }

}
