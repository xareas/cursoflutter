import 'package:flutter/material.dart';
import 'package:makers_wallet/views/login/LoginController.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/components/components.dart';
import 'package:makers_wallet/themes/Texts.dart';
import 'package:makers_wallet/themes/MakersTheme.dart';

class LoginView extends GetView<LoginController> {

  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Scaffold(
        body: SafeArea(
          child: CustomPaint(
            painter: MakerHeader(),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    Center(
                      child: Text(TextsWallet.titleLabel,
                          style: MakersTheme.darkTextTheme.headline1),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    Container(
                      width: 50.w,
                      height: 16.h,

                      child: Image.asset("assets/images/logo.png"
                      ,fit: BoxFit.contain,),


                    ),



                    TextFormField(
                        onChanged: controller.userName,
                        style: TextStyle(fontSize: 12.sp),

                        decoration: const InputDecoration(

                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(fontSize: 18,fontWeight:FontWeight.bold  ),

                          labelText: "Usuario",
                           hintText: 'Nombre de Usuario',
                          prefixIcon: Icon(Icons.person, color: Colors.black, size: 18, ),
                        )),

                    SizedBox(
                      height: 2.h,
                    ),
                    TextFormField(
                        onChanged: controller.passWord,
                        obscureText: true,
                        style: TextStyle(fontSize: 14.sp),
                        decoration: const InputDecoration(
                          labelText: 'Clave',
                          labelStyle: TextStyle(fontSize: 18,fontWeight:FontWeight.bold  ),
                           hintText: 'Clave del Usuario',
                           floatingLabelBehavior: FloatingLabelBehavior.always,
                           prefixIcon: Icon(Icons.key, color: Colors.black, size: 18, ),
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await controller.onLoginEvent(context);
                      },
                      child: Text(TextsWallet.login,
                          style: MakersTheme.darkTextTheme.headline3),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
