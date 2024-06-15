import 'package:ess/src/services/local/base/auth_view_model.dart';
import 'package:ess/src/services/local/navigation_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends ReactiveViewModel with AuthViewModel {
  init() async {

    firstRouter();
    print("object");
  }


  void firstRouter() async {
    (authService.user?.email == null)
        ? Future.delayed(Duration(milliseconds: 5), () {
            // Login Page Route
            print("Login Page Route");
            authService.user  = null;
            NavService.login();
            print(authService.user?.email );
            print(authService.user?.AdvFinApp);
          })
        : Future.delayed(Duration(milliseconds: 5), () {
            // Dashboard Page Route
            print("Dashboard Page Route");
            NavService.dashboard();
            print(authService.user?.email );
            print(authService.user?.AdvFinApp);
          });
  }




  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}
