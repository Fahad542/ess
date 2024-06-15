import 'package:ess/src/base/utils/constants.dart';
import 'package:ess/src/services/local/base/auth_view_model.dart';
import 'package:ess/src/services/local/navigation_service.dart';
import 'package:ess/src/services/remote/base/api_view_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends ReactiveViewModel
    with ApiViewModel, AuthViewModel {
  bool isSignInButtonEnable = false;
  bool isShowPassword = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void saveAdvFinAppToSharedPreferences(String advFinAppValue) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('AdvFinApp', advFinAppValue);
  }
  onLogIn(BuildContext context,) async {
    var newsResponse = await runBusyFuture(apiService.login(context, email.value.text.trim(), password.value.text.trim()));
    newsResponse.when(success: (data) async {
      if (data.email != null) {
        authService.user = data;
        subscribeToken(context);
        NavService.dashboard();
        Constants.customSuccessSnack(context, "Welcome Back ${data.userName}");
      } else {
        Constants.customErrorSnack(context, data.loginMsg.toString());
      }
    }, failure: (error) {
      Constants.customErrorSnack(context, error.toString());
    });
  }

  subscribeToken(BuildContext context) async {
    String? token = await FirebaseMessaging.instance.getToken();
    print("token: ${token}");
    var newsResponse = await runBusyFuture(apiService.tokenSubscribe(context, token ?? ""));
    newsResponse.when(success: (data) async {
      print("data: ${data}");

    }, failure: (error) {
      Constants.customErrorSnack(context, error.toString());
    });
  }
  checkButtonValidate(BuildContext context) {
    if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email.value.text)) {
      if (password.value.text.length > 3) {
        isSignInButtonEnable = true;
        notifyListeners();
      } else {
        isSignInButtonEnable = false;
        notifyListeners();
      }
    } else {
      isSignInButtonEnable = false;
      notifyListeners();
    }
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}
