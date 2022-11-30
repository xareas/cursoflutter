import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:makers_wallet/routes/AppRoutes.dart';
import 'package:makers_wallet/themes/MakersTheme.dart';
import 'package:sizer/sizer.dart';
import 'infrastructure/StorageService.dart';

void main() async {
  initialServices();
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ); // To turn off landscape mode
  runApp(const MyApp());
}

Future<void> initialServices() async {
  await Get.putAsync(() => StorageService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Makers Wallet',
          theme: MakersTheme.light(),
          darkTheme: MakersTheme.dark(),
          themeMode: ThemeMode.light,
          getPages: AppRoutes.pages,
          initialRoute: AppRoutes.login,
        );
      },
    );
  }
}
