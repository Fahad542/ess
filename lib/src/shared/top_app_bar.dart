import 'package:ess/src/services/local/navigation_service.dart';
import 'package:ess/src/shared/spacing.dart';
import 'package:ess/src/styles/app_colors.dart';
import 'package:ess/src/styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeAppBar extends StatelessWidget {
  final String name;
  final Function onMenuTap;
  final Function onNotificationTap;

  const HomeAppBar(
      {Key? key,
      required this.name,
      required this.onMenuTap,
      required this.onNotificationTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 18, left: 18, right: 18),
      margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  onMenuTap();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor("#FAFAFA"),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: HexColor("#F3F3F3"),
                    ),
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                      child: Icon(
                    Icons.menu,
                    color: AppColors.primary,
                  )),
                ),
              ),
              HorizontalSpacing(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Assalam o alaikum",
                    style: TextStyling.text18,
                  ),
                  Text(
                    name,
                    style:
                        TextStyling.bold22.copyWith(color: AppColors.primary),
                  ),
                ],
              )
            ],
          ),
          InkWell(
            onTap: () {
              onNotificationTap();
            },
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#FAFAFA"),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: HexColor("#F3F3F3"),
                ),
              ),
              height: 40,
              width: 40,
              child: Center(
                  child: Icon(
                Icons.notifications,
                color: AppColors.primary,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class GeneralAppBar extends StatelessWidget {
  final String title;
  final Function onMenuTap;
  final Function onNotificationTap;

  const GeneralAppBar(
      {Key? key,
      required this.title,
      required this.onMenuTap,
      required this.onNotificationTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 18, left: 18, right: 18),
      margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              onMenuTap();
            },
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#FAFAFA"),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: HexColor("#F3F3F3"),
                ),
              ),
              height: 40,
              width: 40,
              child: Center(
                  child: Icon(
                Icons.menu,
                color: AppColors.primary,
              )),
            ),
          ),
          Text(
            title,
            style: TextStyling.bold22.copyWith(color: AppColors.primary),
          ),
          InkWell(
            onTap: () {
              NavService.notification();
              onNotificationTap();
            },
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#FAFAFA"),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: HexColor("#F3F3F3"),
                ),
              ),
              height: 40,
              width: 40,
              child: Center(
                  child: Icon(
                Icons.notifications,
                color: AppColors.primary,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
