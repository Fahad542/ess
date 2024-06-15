import 'package:ess/generated/assets.dart';
import 'package:ess/src/base/utils/utils.dart';
import 'package:ess/src/shared/spacing.dart';
import 'package:ess/src/shared/top_app_bar.dart';
import 'package:ess/src/styles/app_colors.dart';
import 'package:ess/src/styles/text_theme.dart';
import 'package:ess/src/views/notification/notification_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stacked/stacked.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotificationViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 18, left: 18, right: 18,),
                margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
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
                              Icons.arrow_back_ios_new,
                              color: AppColors.primary,
                            )),
                      ),
                    ),
                    Text(
                      "Notification",
                      style: TextStyling.bold22.copyWith(color: AppColors.primary),
                    ),
                    SizedBox(height: 40, width: 40,)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: context.screenSize().height - 110,
                width: context.screenSize().width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesNothingHere,
                      height: 200,
                    ),
                    VerticalSpacing(),
                    Text("Data Not Available", style: TextStyling.bold18.copyWith(color: AppColors.primary),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => NotificationViewModel(),
    );
  }
}
