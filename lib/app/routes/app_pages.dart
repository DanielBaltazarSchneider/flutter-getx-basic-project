import 'package:calculadora_sustentabilidade/app/modules/home/home_page.dart';
import 'package:get/get.dart';

import '../modules/splash/splash_page.dart';

part './app_routes.dart';

class AppPages {
  static final routes = [
    // Splash
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
    ),

    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
    ),

    //   /*  // Romaneio
    //   GetPage(
    //     name: Routes.ROMANEIO,
    //     page: () => RomaneioPage(
    //       movimentacao: Get.arguments,
    //     ),
    //   ), */
  ];
}
