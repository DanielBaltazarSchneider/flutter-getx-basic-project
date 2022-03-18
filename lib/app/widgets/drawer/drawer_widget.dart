import 'package:calculadora_sustentabilidade/app/routes/app_pages.dart';
import 'package:calculadora_sustentabilidade/app/theme/app_color.dart';
import 'package:calculadora_sustentabilidade/app/theme/app_size.dart';
import 'package:calculadora_sustentabilidade/app/widgets/drawer/drawer_custom_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String appName = "";
  String packageName = "";
  String version = "";
  String buildNumber = "";

  @override
  void initState() {
    super.initState();
    getInfo();
  }

  Future<void> getInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    setState(() {
      appName = packageInfo.appName;
      packageName = packageInfo.packageName;
      version = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    double? height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double? width = MediaQuery.of(context).size.width;
    String imagem = "";
    return Drawer(
      elevation: 10,
      child: Container(
        color: Colors.black87,
        child: Center(
          child: ListView(
            //  mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                // height: (height / 3.5),
                //padding: const EdgeInsets.only(right: 8.0),
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                      image: AssetImage("assets/images/png/fundo_drawer.png"),
                      fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: (height / 5),
                      width: width,
                    ),
                    Positioned(
                      top: 20,
                      right: 10,
                      child: IconButton(onPressed: () => Navigator.of(context).pop(), icon: Icon(Icons.close, color: Colors.white)),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 15,
                      child: Container(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //TODO
                            (imagem != "")
                                ? CircleAvatar(
                                    radius: (AppSize.size / 16),
                                    backgroundColor: AppColors.colorBrandPrimaryMedium,
                                    backgroundImage: AssetImage(imagem.toString()),
                                  )
                                : CircleAvatar(
                                    radius: (AppSize.size / 16),
                                    backgroundColor: AppColors.colorBrandPrimaryMedium,
                                    child: Text(
                                      "",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: AppSize.font14,
                                        fontWeight: FontWeight.normal,
                                        color: AppColors.colorWhite,
                                      ),
                                    ),
                                  ),
                            SizedBox(height: 10),
                            Text(
                              "nome",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: AppSize.font14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.colorWhite,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "email",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: AppSize.font14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.colorWhite,
                              ),
                            ),

                            SizedBox(height: 5),
                            Text(
                              "https://tenant.agrotis.io",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: AppSize.font14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.colorWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              DrawerCustomTile(
                  title: "Romaneios",
                  onTap: () async {
                    await Get.toNamed(Routes.HOME);
                  }),
              DrawerCustomTile(
                title: "Devoluções",
                onTap: () {
                  Get.back();
                },
                isActive: false,
              ),
              DrawerCustomTile(
                title: "Compra e Venda",
                onTap: () {
                  Get.back();
                },
                isActive: false,
              ),
              DrawerCustomTile(
                title: "Fixações",
                onTap: () {
                  Get.back();
                },
                isActive: false,
              ),
              SizedBox(height: (15)),
              SizedBox(height: (20)),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "$appName - $version.$buildNumber",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: AppSize.font14,
                      fontWeight: FontWeight.normal,
                      color: AppColors.colorWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
