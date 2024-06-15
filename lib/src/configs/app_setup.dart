import 'package:ess/src/services/local/auth_service.dart';
import 'package:ess/src/services/local/connectivity_service.dart';
import 'package:ess/src/services/local/keyboard_service.dart';
import 'package:ess/src/services/remote/api_service.dart';
import 'package:ess/src/views/capex/apply_capex/apply_capex_view.dart';
import 'package:ess/src/views/capex/capex_detail/capex_detail_view.dart';
import 'package:ess/src/views/capex/capex_forms/capex_forms_view.dart';
import 'package:ess/src/views/dashboard/dashboard_view.dart';
import 'package:ess/src/views/fnf/apply_fnf/apply_fnf_view.dart';
import 'package:ess/src/views/leaves_and_visits/apply_leave/apply_leave_view.dart';
import 'package:ess/src/views/leaves_and_visits/apply_visit/apply_visit_view.dart';
import 'package:ess/src/views/login/login_view.dart';
import 'package:ess/src/views/notification/notification_view.dart';
import 'package:ess/src/views/reservation/all_reservations/all_reservations_view.dart';
import 'package:ess/src/views/reservation/all_reservations/all_reservations_view_model.dart';
import 'package:ess/src/views/reservation/reserve_board_room/reserve_board_room_view.dart';
import 'package:ess/src/views/splash/splash_view.dart';
import 'package:ess/src/views/your_attandence/your_attandence_view.dart';
import 'package:ess/src/views/leaves_and_visits/your_leave_aplications/your_leave_aplications_view.dart';
import 'package:ess/src/views/leaves_and_visits/your_visits/your_visits_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: NotificationView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: YourAttendanceView),
    MaterialRoute(page: LeaveApplicationsView),
    MaterialRoute(page: VisitsView),
    MaterialRoute(page: ApplyLeaveView),
    MaterialRoute(page: ApplyVisitView),
    MaterialRoute(page: ApplyCapexView),
    MaterialRoute(page: CapexDetailView),
    MaterialRoute(page: CapexFormsView),
    MaterialRoute(page: ApplyFnfView),
    MaterialRoute(page: ReserveBoardRoomView),
    MaterialRoute(page: AllReservationsView),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: ConnectivityService),
    LazySingleton(classType: KeyboardService),
    LazySingleton(classType: ApiService),
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
