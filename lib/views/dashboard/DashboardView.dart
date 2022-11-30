import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:makers_wallet/themes/Texts.dart';
import 'package:makers_wallet/views/escrow/EscrowView.dart';
import 'package:makers_wallet/views/views.dart';

class DashboardView extends StatelessWidget {

  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children:  const [
                HomeView(),
                EscrowView(),
                ChartView(),
              ],
            ),
          ),
          bottomNavigationBar: FloatingNavbar(

            unselectedItemColor: Colors.grey[900],
            iconSize: 32.0,
            selectedItemColor: Colors.white,
            selectedBackgroundColor: Colors.indigo,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            backgroundColor: Colors.white,
            elevation: 1.0,
            items: [
              _bottomNavigationBarItem(
                icon: Icons.home,
                label: TextsWallet.NavButtonHome,
              ),
              _bottomNavigationBarItem(
                icon: Icons.monetization_on,
                label: TextsWallet.NavButtonInvest,
              ),
              _bottomNavigationBarItem(
                icon: Icons.settings_rounded,
                label: TextsWallet.NavButtonService,
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return FloatingNavbarItem(
      icon: icon,
      title: label,
    );
  }
}
