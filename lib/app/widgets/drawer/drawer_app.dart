import 'package:calculadora_sustentabilidade/app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/theme_service.dart';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Container(
        color: AppColors.colorNeutralDarkest,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              Text(
                "Fulano da Silva",
                style: TextStyle(color: AppColors.colorWhite),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30, left: 100, right: 100),
                child: InkWell(
                  child: Text(
                    "Tema ${Get.isDarkMode ? "Light" : "Dark"}",
                    style: TextStyle(
                      color: AppColors.colorWhite,
                    ),
                  ),
                  onTap: () {
                    ThemeService().switchTheme();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
