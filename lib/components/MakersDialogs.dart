import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/themes/Texts.dart';

abstract class MakerDialogs {
  static alert(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(description),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(_);
            },
            child: const Text(TextsWallet.accept),
          )
        ],
      ),
    );
  }
}

abstract class MakerProgressDialog {
  static show(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) {
        return WillPopScope(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white.withOpacity(0.9),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          onWillPop: () async => false,
        );
      },
    );
  }

  static dissmiss(BuildContext context) {
    Navigator.pop(context);
  }
}

abstract class GetProgressDialog{

  static showProgress(){
    AlertDialog alert = AlertDialog(
      content: Row(children: [
        const CircularProgressIndicator(
          backgroundColor: Colors.red,
        ),
        Container(margin: const EdgeInsets.only(left: 7),
            child: const Text("Cargando datos...")),
      ]),
    );

    showDialog(
      barrierDismissible: false,
      context: Get.context!,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}