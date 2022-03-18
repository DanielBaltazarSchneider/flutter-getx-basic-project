import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppSize {
  /* static double width = Get.width;
  static double height = Get.height;
 */

  static double width = MediaQuery.of(Get.context!).size.width;
  static double height = MediaQuery.of(Get.context!).size.height;

  static bool mobile = width < height; //GetPlatform.isMobile;
  static bool isWeb = width > height; //GetPlatform.isWeb;

  static double size = isWeb ? 736 : (width < height ? width : height);

  static double font5 = isWeb ? 5 : size * 0.0125;
  static double font6 = isWeb ? 6 : size * 0.015;
  static double font7 = isWeb ? 7 : size * 0.0175;
  static double font8 = isWeb ? 8 : size * 0.02;
  static double font9 = isWeb ? 9 : size * 0.0225;
  static double font10 = isWeb ? 10 : size * 0.025;
  static double font11 = isWeb ? 11 : size * 0.0275;
  static double font12 = isWeb ? 12 : size * 0.03;
  static double font13 = isWeb ? 13 : size * 0.0325;
  static double font14 = isWeb ? 14 : size * 0.035;
  static double font15 = isWeb ? 15 : size * 0.0375;
  static double font16 = isWeb ? 16 : size * 0.04;
  static double font17 = isWeb ? 17 : size * 0.0425;
  static double font18 = isWeb ? 18 : size * 0.0450;
  static double font19 = isWeb ? 19 : size * 0.0475;
  static double font20 = isWeb ? 20 : size * 0.0500;
  static double font21 = isWeb ? 21 : size * 0.0525;
  static double font22 = isWeb ? 22 : size * 0.0550;
  static double font23 = isWeb ? 23 : size * 0.0575;
  static double font24 = isWeb ? 24 : size * 0.0600;
  static double font25 = isWeb ? 25 : size * 0.0625;
  static double font26 = isWeb ? 26 : size * 0.0650;

  static void setNewSize({required double newWidth, required newHeight}) {
    width = newWidth;
    height = newHeight;
    mobile = width < height; //GetPlatform.isMobile;
    isWeb = width > height; //GetPlatform.isWeb;
    size = isWeb ? 736 : (width < height ? width : height);
    font5 = isWeb ? 5 : size * 0.0125;
    font6 = isWeb ? 6 : size * 0.015;
    font7 = isWeb ? 7 : size * 0.0175;
    font8 = isWeb ? 8 : size * 0.02;
    font9 = isWeb ? 9 : size * 0.0225;
    font10 = isWeb ? 10 : size * 0.025;
    font11 = isWeb ? 11 : size * 0.0275;
    font12 = isWeb ? 12 : size * 0.03;
    font13 = isWeb ? 13 : size * 0.0325;
    font14 = isWeb ? 14 : size * 0.035;
    font15 = isWeb ? 15 : size * 0.0375;
    font16 = isWeb ? 16 : size * 0.04;
    font17 = isWeb ? 17 : size * 0.0425;
    font18 = isWeb ? 18 : size * 0.0450;
    font19 = isWeb ? 19 : size * 0.0475;
    font20 = isWeb ? 20 : size * 0.0500;
    font21 = isWeb ? 21 : size * 0.0525;
    font22 = isWeb ? 22 : size * 0.0550;
    font23 = isWeb ? 23 : size * 0.0575;
    font24 = isWeb ? 24 : size * 0.0600;
    font25 = isWeb ? 25 : size * 0.0625;
    font26 = isWeb ? 26 : size * 0.0650;
  }
}
