// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ess/src/models/api_response_models/capex_forms.dart' as _i18;
import 'package:ess/src/views/capex/apply_capex/apply_capex_view.dart' as _i11;
import 'package:ess/src/views/capex/capex_detail/capex_detail_view.dart'
    as _i12;
import 'package:ess/src/views/capex/capex_forms/capex_forms_view.dart' as _i13;
import 'package:ess/src/views/dashboard/dashboard_view.dart' as _i5;
import 'package:ess/src/views/fnf/apply_fnf/apply_fnf_view.dart' as _i14;
import 'package:ess/src/views/leaves_and_visits/apply_leave/apply_leave_view.dart'
    as _i9;
import 'package:ess/src/views/leaves_and_visits/apply_visit/apply_visit_view.dart'
    as _i10;
import 'package:ess/src/views/leaves_and_visits/your_leave_aplications/your_leave_aplications_view.dart'
    as _i7;
import 'package:ess/src/views/leaves_and_visits/your_visits/your_visits_view.dart'
    as _i8;
import 'package:ess/src/views/login/login_view.dart' as _i3;
import 'package:ess/src/views/notification/notification_view.dart' as _i4;
import 'package:ess/src/views/reservation/all_reservations/all_reservations_view.dart'
    as _i16;
import 'package:ess/src/views/your_attandence/pending_approval.dart'
as _i17;
import 'package:ess/src/views/leaves_and_visits/pending_visit_approval/vist_approval_view.dart'
as _i18;
import 'package:ess/src/views/reservation/reserve_board_room/reserve_board_room_view.dart'
    as _i15;
import 'package:ess/src/views/splash/splash_view.dart' as _i2;
import 'package:ess/src/views/your_attandence/your_attandence_view.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i17;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i19;
import 'package:ess/src/views/Advance/final_advance_approval_view.dart' as _i20;
import 'package:ess/src/views/Loan/loan_view.dart' as _i21;
import 'package:ess/src/views/Loan/See_all_loan/see_all_loan_view.dart' as _i22;
import 'package:ess/src/views/Whistle_blowing/whistle_blowing_view.dart' as _i23;
import 'package:ess/src/views/Advance/request_advance_view.dart' as _i24;
import 'package:ess/src/views/Resignation_form/resignation_view.dart' as _i25;
import 'package:ess/src/views/Resignation_form/line_manager_approval/line_manager_approval.dart' as _i26;
import 'package:ess/src/views/Loan/Pending_guarantees/pending_guarantees_view.dart' as _i27;
import 'package:ess/src/views/Loan/Loan_history_for_hod/loan_history_view.dart' as _i28;
import 'package:ess/src/views/Profile_screen/profile_screen.dart' as _i29;
import 'package:ess/src/views/Loan/Pending_hod_Approval/pending_hod_approval_view.dart' as _i30;
import 'package:ess/src/views/Loan/Director_loan_approval/director_loan_approval.dart' as _i31;

class Routes {
  static const splashView = '/';

  static const loginView = '/login-view';

  static const notificationView = '/notification-view';

  static const dashboardView = '/dashboard-view';

  static const yourAttendanceView = '/your-attendance-view';

  static const leaveApplicationsView = '/leave-applications-view';

  static const visitsView = '/visits-view';

  static const applyLeaveView = '/apply-leave-view';

  static const applyVisitView = '/apply-visit-view';

  static const applyCapexView = '/apply-capex-view';

  static const capexDetailView = '/capex-detail-view';

  static const capexFormsView = '/capex-forms-view';

  static const applyFnfView = '/apply-fnf-view';

  static const reserveBoardRoomView = '/reserve-board-room-view';

  static const allReservationsView = '/all-reservations-view';
  static const pendingapproval = '/pending_approval';
  static const pendingvisitapproval = '/visit_approval_view';
  static const finaladvance=   '/final-advance-approval-view';
  static const requestadvance=   '/request_advance_view';
  static const loan=   '/loan_view.dart';
  static const allloan=   '/see_all_loan_view.dart';
  static const loan_history=   '/loan_history_view.dart';
  static const pending_guarantee=   '/pending_guarantees_view.dart';
  static const Whistle=   '/whistle_blowing_view.dart';
  static const resignation=   '/resignation_view.dart';
  static const profile=   '/profile_screen.dart';
  static const pending_hod_approval=   '/pending_hod_approval_view';
  static const direcctor_approvals= '/director_loan_approval';
  static const line_manager_approval= '/line_manager_approval.dart';
  static const all = <String>{
    splashView,
    loginView,
    notificationView,
    dashboardView,
    yourAttendanceView,
    leaveApplicationsView,
    visitsView,
    applyLeaveView,
    applyVisitView,
    applyCapexView,
    capexDetailView,
    capexFormsView,
    applyFnfView,
    reserveBoardRoomView,
    allReservationsView,
    pendingapproval,
    pendingvisitapproval,
    finaladvance,
    loan,
    Whistle,
    resignation,
    requestadvance,
    line_manager_approval,
    pending_guarantee,
    loan_history,
    profile,
    pending_hod_approval,
    direcctor_approvals
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i3.LoginView,
    ),
    _i1.RouteDef(
      Routes.notificationView,
      page: _i4.NotificationView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i5.DashboardView,
    ),
    _i1.RouteDef(
      Routes.yourAttendanceView,
      page: _i6.YourAttendanceView,
    ),
    _i1.RouteDef(
      Routes.leaveApplicationsView,
      page: _i7.LeaveApplicationsView,
    ),
    _i1.RouteDef(
      Routes.visitsView,
      page: _i8.VisitsView,
    ),
    _i1.RouteDef(
      Routes.applyLeaveView,
      page: _i9.ApplyLeaveView,
    ),
    _i1.RouteDef(
      Routes.applyVisitView,
      page: _i10.ApplyVisitView,
    ),
    _i1.RouteDef(
      Routes.applyCapexView,
      page: _i11.ApplyCapexView,
    ),
    _i1.RouteDef(
      Routes.capexDetailView,
      page: _i12.CapexDetailView,
    ),
    _i1.RouteDef(
      Routes.capexFormsView,
      page: _i13.CapexFormsView,
    ),
    _i1.RouteDef(
      Routes.applyFnfView,
      page: _i14.ApplyFnfView,
    ),
    _i1.RouteDef(
      Routes.reserveBoardRoomView,
      page: _i15.ReserveBoardRoomView,
    ),
    _i1.RouteDef(
      Routes.allReservationsView,
      page: _i16.AllReservationsView,
    ),
    _i1.RouteDef(
      Routes.pendingapproval,
      page: _i17.Pendingapproval
    ),
    _i1.RouteDef(
        Routes.pendingvisitapproval,
        page: _i18.Pendingvisitapproval,
    ),
    _i1.RouteDef(
      Routes.finaladvance,
      page: _i20.final_advance
  ),
    _i1.RouteDef(
        Routes.loan,
        page: _i21.Loan
    ),
    _i1.RouteDef(
        Routes.allloan,
        page: _i22.Allloan
    ),
    _i1.RouteDef(
        Routes.Whistle,
        page: _i23.WhistleBlowingview
    ),
    _i1.RouteDef(
        Routes.requestadvance,
        page: _i24.requestadvance
    ),
    _i1.RouteDef(
        Routes.resignation,
        page: _i25.resignation_form,
    ),
    _i1.RouteDef(
      Routes.line_manager_approval,
      page: _i26.LineManager,
    ),
    _i1.RouteDef(
      Routes.pending_guarantee,
      page: _i27.Pending_guarantees,
    ),
    _i1.RouteDef(
      Routes.loan_history,
      page: _i28.Loan_history,
    ),
    _i1.RouteDef(
      Routes.profile,
      page: _i29.profile_screen,
    ),
    _i1.RouteDef(
      Routes.pending_hod_approval,
      page: _i30.Pending_hod_approval,
    ),
    _i1.RouteDef(
      Routes.direcctor_approvals,
      page: _i31.director_loan_approval,
    )



  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i2.SplashView(),
        settings: data,
      );
    },
    _i3.LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i3.LoginView(),
        settings: data,
      );
    },
    _i4.NotificationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i4.NotificationView(),
        settings: data,
      );
    },
    _i5.DashboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i5.DashboardView(),
        settings: data,
      );
    },
    _i6.YourAttendanceView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i6.YourAttendanceView(),
        settings: data,
      );
    },
    _i7.LeaveApplicationsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i7.LeaveApplicationsView(),
        settings: data,
      );
    },
    _i8.VisitsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i8.VisitsView(),
        settings: data,
      );
    },
    _i9.ApplyLeaveView: (data) {
      final args = data.getArgs<ApplyLeaveViewArguments>(
        orElse: () => const ApplyLeaveViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i9.ApplyLeaveView(key: args.key, date: args.date),
        settings: data,
      );
    },
    _i10.ApplyVisitView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i10.ApplyVisitView(),
        settings: data,
      );
    },
    _i11.ApplyCapexView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i11.ApplyCapexView(),
        settings: data,
      );
    },
    _i12.CapexDetailView: (data) {
      final args = data.getArgs<CapexDetailViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i12.CapexDetailView(key: args.key, data: args.data),
        settings: data,
      );
    },
    _i13.CapexFormsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i13.CapexFormsView(),
        settings: data,
      );
    },
    _i14.ApplyFnfView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i14.ApplyFnfView(),
        settings: data,
      );
    },
    _i15.ReserveBoardRoomView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i15.ReserveBoardRoomView(),
        settings: data,
      );
    },
    _i16.AllReservationsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i16.AllReservationsView(),
        settings: data,
      );
    },
    _i17.Pendingapproval: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i17.Pendingapproval(),
        settings: data,
      );
    },
    _i18.Pendingvisitapproval: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i18.Pendingvisitapproval(),
        settings: data,
      );
    },
    _i20.final_advance: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i20.final_advance(),
        settings: data,
      );
    },
    _i21.Loan: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i21.Loan(),
        settings: data,
      );
    },
    _i22.Allloan: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i22.Allloan(),
        settings: data,
      );
    },
    _i23.WhistleBlowingview: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i23.WhistleBlowingview(),
        settings: data,
      );
    },
    _i24.requestadvance: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i24.requestadvance(),
        settings: data,
      );
    },
    _i25.resignation_form: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i25.resignation_form(),
        settings: data,
      );
    },
    _i26.LineManager: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i26.LineManager(),
        settings: data,
      );
    },
    _i27.Pending_guarantees: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i27.Pending_guarantees(),
        settings: data,
      );
    },
    _i28.Loan_history: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i28.Loan_history(),
        settings: data,
      );
    },
    _i29.profile_screen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i29.profile_screen(),
        settings: data,
      );
    },
    _i30.Pending_hod_approval: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i30.Pending_hod_approval(),
        settings: data,
      );
    },
    _i31.director_loan_approval: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i31.director_loan_approval(),
        settings: data,
      );
    },

  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ApplyLeaveViewArguments {
  const ApplyLeaveViewArguments({
    this.key,
    this.date,
  });

  final _i17.Key? key;

  final String? date;
}

class CapexDetailViewArguments {
  const CapexDetailViewArguments({
    this.key,
    required this.data,
  });

  final _i17.Key? key;

  final _i18.Datalist data;
}

extension NavigatorStateExtension on _i19.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToYourAttendanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.yourAttendanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLeaveApplicationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.leaveApplicationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVisitsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.visitsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToApplyLeaveView({
    _i17.Key? key,
    String? date,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.applyLeaveView,
        arguments: ApplyLeaveViewArguments(key: key, date: date),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToApplyVisitView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.applyVisitView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToApplyCapexView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.applyCapexView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCapexDetailView({
    _i17.Key? key,
    required _i18.Datalist data,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.capexDetailView,
        arguments: CapexDetailViewArguments(key: key, data: data),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCapexFormsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.capexFormsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToApplyFnfView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.applyFnfView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToReserveBoardRoomView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.reserveBoardRoomView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllReservationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.allReservationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithYourAttendanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.yourAttendanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLeaveApplicationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.leaveApplicationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithVisitsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.visitsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithApplyLeaveView({
    _i17.Key? key,
    String? date,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.applyLeaveView,
        arguments: ApplyLeaveViewArguments(key: key, date: date),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithApplyVisitView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.applyVisitView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithApplyCapexView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.applyCapexView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCapexDetailView({
    _i17.Key? key,
    required _i18.Datalist data,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.capexDetailView,
        arguments: CapexDetailViewArguments(key: key, data: data),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCapexFormsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.capexFormsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithApplyFnfView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.applyFnfView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithReserveBoardRoomView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.reserveBoardRoomView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAllReservationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.allReservationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
  Future<dynamic> replaceWithAllfinaladvance([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
    transition,
  ]) async {
    return replaceWith<dynamic>(Routes.finaladvance,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
