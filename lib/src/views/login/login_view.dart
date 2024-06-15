import 'package:ess/generated/assets.dart';
import 'package:ess/src/base/utils/utils.dart';
import 'package:ess/src/shared/bottons.dart';
import 'package:ess/src/shared/input_field.dart';
import 'package:ess/src/shared/spacing.dart';
import 'package:ess/src/styles/app_colors.dart';
import 'package:ess/src/styles/text_theme.dart';
import 'package:ess/src/views/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(28, 30, 28, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset(
                  Assets.imagesPremierlogo,
                  width: context.screenSize().width,
                ),
                VerticalSpacing(3),
                Text(
                  "Please Login To Continue The App",
                  style: TextStyling.text16.copyWith(color: AppColors.darkGrey),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Column(
                  children: [
                    MainInputField(
                      hint: 'Enter Email Address',
                      controller: model.email,
                      inputType: TextInputType.emailAddress,
                      onChanged: (val) {
                        model.checkButtonValidate(context);
                      },
                      message: 'Please enter email address',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: AppColors.primary,
                        size: 24,
                      ),
                    ),
                    VerticalSpacing(24),
                    MainInputField(
                      hint: 'Enter Password',
                      controller: model.password,
                      isPassword: (model.isShowPassword) ? false : true,
                      onChanged: (val) {
                        model.checkButtonValidate(context);
                      },
                      message: 'Please enter password',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: AppColors.primary,
                        size: 24,
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            model.isShowPassword = !model.isShowPassword;
                            model.notifyListeners();
                          },
                          child: Icon(
                            Icons.remove_red_eye,
                            color: AppColors.primary,
                            size: 24,
                          )),
                    ),
                  ],
                ),
                Spacer(),
                MainButton(
                    text: "Log In",
                    isEnabled: model.isSignInButtonEnable,
                    isBusy: model.isBusy,
                    onTap: () {
                      model.onLogIn(context);
                    }),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
