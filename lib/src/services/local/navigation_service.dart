import 'package:ess/src/configs/app_setup.locator.dart';
import 'package:ess/src/configs/app_setup.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../views/your_attandence/pending_approval.dart';
import '../../views/your_attandence/pending_approval.dart';
import '../../views/your_attandence/pending_approval.dart';
import '../../views/your_attandence/pending_approval.dart';

class NavService {
  static NavigationService? _navigationService = locator<NavigationService>();

  // key
  static GlobalKey<NavigatorState>? get key => StackedService.navigatorKey;

  // key for nested navigator to be used in SplashView
  static final _splashViewNavigatorId = 0;

  static GlobalKey<NavigatorState>? get nestedNavKey =>
      StackedService.nestedNavigationKey(_splashViewNavigatorId);

  // on generate route
  static Route<dynamic>? Function(RouteSettings) get onGenerateRoute =>
      StackedRouter().onGenerateRoute;

  static Future<dynamic>? splash({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.splashView, arguments: arguments);

  static Future<dynamic>? login({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.loginView, arguments: arguments);

  static Future<dynamic>? notification({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.notificationView, arguments: arguments);

  static Future<dynamic>? dashboard({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.dashboardView, arguments: arguments);

  static Future<dynamic>? yourAttendance({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.yourAttendanceView, arguments: arguments);

  static Future<dynamic>? leaveApplications({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.leaveApplicationsView, arguments: arguments);

  static Future<dynamic>? visits({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.visitsView, arguments: arguments);

  static Future<dynamic>? applyLeave({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.applyLeaveView, arguments: arguments);

  static Future<dynamic>? applyVisit({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.applyVisitView, arguments: arguments);

  static Future<dynamic>? applyCapex({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.applyCapexView, arguments: arguments);

  static Future<dynamic>? capexForms({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.capexFormsView, arguments: arguments);

  static Future<dynamic>? capexDetail({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.capexDetailView, arguments: arguments);

  static Future<dynamic>? applyFnf({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.applyFnfView, arguments: arguments);

  static Future<dynamic>? allReservations({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.allReservationsView, arguments: arguments);

  static Future<dynamic>? reserveBoardRoom({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.reserveBoardRoomView, arguments: arguments);
  static Future<dynamic>? Pendingapproval({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.pendingapproval, arguments: arguments);
  static Future<dynamic>? Pendingvisitapproval({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.pendingvisitapproval, arguments: arguments);
  static Future<dynamic>? Final_advance({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.finaladvance, arguments: arguments);
  static Future<dynamic>? Request_advance({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.requestadvance, arguments: arguments);
  static Future<dynamic>? loan({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.loan, arguments: arguments);
  static Future<dynamic>? whistle({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.Whistle, arguments: arguments);
  static Future<dynamic>? Resignation({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.resignation, arguments: arguments);
  static Future<dynamic>? profile({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.profile, arguments: arguments);
  static Future<dynamic>? pending_hod_approval({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.pending_hod_approval, arguments: arguments);
  static Future<dynamic>? director_approval({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.direcctor_approvals, arguments: arguments);
  static Future<dynamic>? line_manager({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.line_manager_approval, arguments: arguments);
  static Future<dynamic>? allloan({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.allloan, arguments: arguments);
  static Future<dynamic>? loan_history({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.loan_history, arguments: arguments);
  static Future<dynamic>? pending_guarantees({dynamic arguments}) =>
      _navigationService!
          .clearTillFirstAndShow(Routes.pending_guarantee, arguments: arguments);
}
