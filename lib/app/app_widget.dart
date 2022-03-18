import 'package:calculadora_sustentabilidade/app/routes/app_pages.dart';
import 'package:calculadora_sustentabilidade/app/theme/app_theme.dart';
import 'package:calculadora_sustentabilidade/app/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_binding.dart';
import 'modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Portal do Produtor',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeService().theme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      locale: const Locale('pt', 'BR'),
      // locale: DevicePreview.locale(context), // Add the locale here
      // builder: DevicePreview.appBuilder,
      home: const SplashPage(),

      initialBinding: AppBinding(),
    );
  }
}
