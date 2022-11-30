import 'package:get/get.dart';
import 'package:makers_wallet/views/chart/ChartBinding.dart';
import 'package:makers_wallet/views/escrow/EscrowBinding.dart';
import 'package:makers_wallet/views/payment/PaymentBinding.dart';
import 'package:makers_wallet/views/successful/SuccessfullBinding.dart';
import 'package:makers_wallet/views/views.dart';

abstract class AppRoutes {
  static const dashboard = "/Dashboard";
  static const home = "/Home";
  static const login = "/Login";
  static const chart = "/Chart";
  static const payment = "/Payment";
  static const success = "/Success";
  static const invest = "/Invest";

  static final pages = [
    GetPage(
        name: dashboard,
        page: () => const DashboardView(),
        binding: DashboardBinding()),
    GetPage(
        name: home,
        page: () => const HomeView(),
        transition: Transition.upToDown),
    GetPage(
        name: login,
        page: () => const LoginView(),
        binding: LoginBinding(),
        transition: Transition.cupertinoDialog),
    GetPage(
        name: chart, page: () => const ChartView(), binding: ChartBinding()),
    GetPage(
        name: payment,
        page: () => const PaymentView(),
        binding: PaymentBinding(),
        transition: Transition.upToDown),
    GetPage(
        name: invest, page: () => const InvestView(), binding: InvestBinding()),
    GetPage(
        name: invest, page: () => const EscrowView(), binding: EscrowBinding()),
    GetPage(
        name: success,
        page: () => const SucessfulView(),
        binding: SuccessfullBinding()),
  ];
}
