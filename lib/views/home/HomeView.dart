import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/views/views.dart';
import 'widget/HeaderWidget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child:  HeaderWidget()
      ),
    );

  }



}
