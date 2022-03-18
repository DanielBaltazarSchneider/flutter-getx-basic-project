import 'package:calculadora_sustentabilidade/app/theme/app_color.dart';
import 'package:calculadora_sustentabilidade/app/theme/app_size.dart';
import 'package:flutter/material.dart';

class DrawerCustomTile extends StatelessWidget {
  final String? title;
  final String? number;
  final VoidCallback? onTap;
  final bool isActive;

  const DrawerCustomTile({
    Key? key,
    @required this.title,
    this.number = "",
    @required this.onTap,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: ListTile(
              isThreeLine: false,
              dense: true,
              onTap: onTap,
              title: Text(
                title.toString(),
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: AppSize.font12,
                  fontWeight: FontWeight.normal,
                  color: isActive ? AppColors.colorWhite : AppColors.colorNeutralDark,
                ),
              ),
              trailing: (number == null || number == "")
                  ? SizedBox(
                      width: (AppSize.size / 9),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.chevron_right, color: AppColors.colorNeutralMedium),
                      ),
                    )
                  : SizedBox(
                      width: (AppSize.size / 8.5),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(children: <Widget>[
                          CircleAvatar(
                            radius: (AppSize.size / 42),
                            backgroundColor: Colors.orange[600],
                            child: Text(
                              number.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: AppSize.font12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.colorWhite,
                              ),
                            ),
                          ),
                          const Icon(Icons.chevron_right, color: AppColors.colorNeutralMedium)
                        ]),
                      ),
                    ),
            ),
          ),
          const Divider(color: Colors.black)
        ],
      ),
    );
  }
}
