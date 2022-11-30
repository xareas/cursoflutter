import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';
import 'package:sizer/sizer.dart';

import 'MakersDialogs.dart';

class MakerButtonIcon extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Function()? onTap;
  final bool disabled;
  const MakerButtonIcon({Key? key, this.icon, this.title, this.onTap, required this.disabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 19.w,
          height: 10.h,
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(
                      5.0) //                 <--- border radius here
                  ),
              border: Border.all(color: Colors.blueGrey),
              boxShadow: const [
                BoxShadow(
                    color: ColorsMakers.primary,
                    blurRadius: 1.0,
                    spreadRadius: 1.0)
              ]),
          child: IconButton(
            icon: Icon(icon ?? Icons.info),
            color: disabled ? ColorsMakers.divideColor:ColorsMakers.colorButtonIcon,
            iconSize: 38.sp,
            onPressed: () {
              if(!disabled) {
                (onTap != null) ? onTap!() : _onTapDefault(context);
              }
            },
          ),
        ),
        Text(
          title ?? "Titulo",
          style: const TextStyle(color: ColorsMakers.primary),
        )
      ],
    );
  }

  void _onTapDefault(BuildContext context) {
    MakerProgressDialog.show(context);
    Future.delayed(const Duration(seconds: 1), () {
      MakerProgressDialog.dissmiss(context);
      Get.snackbar("Maker's", "En Proceso de desarrollo",
          backgroundColor: ColorsMakers.ligthPrimary);
    });
  }
}
