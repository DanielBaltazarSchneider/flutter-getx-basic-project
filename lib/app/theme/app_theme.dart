import 'package:calculadora_sustentabilidade/app/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData.light().copyWith(
    backgroundColor: AppColors.colorWhite,
    buttonColor: AppColors.colorBrandPrimaryMedium,
    primaryColor: AppColors.colorBrandPrimaryMedium,
    accentColor: AppColors.colorBrandPrimaryMedium,
    errorColor: AppColors.colorError,
    hintColor: AppColors.colorNeutralDark,
    disabledColor: AppColors.colorBrandPrimaryMedium.withOpacity(0.5),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: AppColors.colorNeutralDark, fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(color: AppColors.colorNeutralDark),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    backgroundColor: AppColors.colorNeutralDarkest,
    buttonColor: AppColors.colorBrandPrimaryMedium,
    primaryColor: AppColors.colorNeutralDarkest,
    accentColor: AppColors.colorWhite,
    errorColor: AppColors.colorError,
    hintColor: AppColors.colorWhite,
    disabledColor: AppColors.colorBrandPrimaryMedium.withOpacity(0.5),
  );
}
