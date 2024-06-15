import 'package:ess/src/base/utils/constants.dart';
import 'package:ess/src/models/api_response_models/dashboard.dart';
import 'package:ess/src/services/local/base/auth_view_model.dart';
import 'package:ess/src/services/remote/base/api_view_model.dart';
import 'package:ess/src/services/remote/notification/local_notification.dart';
import 'package:ess/src/styles/app_colors.dart';
import 'package:ess/src/views/login/login_view_model.dart';
import 'package:ess/src/views/your_attandence/widget/attendence_data_table.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stacked/stacked.dart';

import '../../models/api_response_models/attendence.dart';

class DashboardViewModel extends ReactiveViewModel
    with AuthViewModel, ApiViewModel {

  LoginViewModel login = LoginViewModel();
  Dashboard? dashboard;

  AttendenceTableData heading = AttendenceTableData(
    date: 'Date',
    checkIn: 'Check In',
    checkOut: 'Check Out',
    Attendstatus: 'attend_status',


    formetedDate: DateTime.now(),
  );
  List<AttendenceTableData> all = [];
  List<AttendenceTableData> alldata = [];
  List<AttendenceTableData> onTimeList = [];
  List<AttendenceTableData> lateList = [];
  List<AttendenceTableData> weekendList = [];
  List<AttendenceTableData> halfDayList = [];
  List<AttendenceTableData> AbsentList = [];
  List<Forms>storeAttendanceData = [];
  String selectedTitle = "";


  late Map<String, double> dataMap;

  init(BuildContext context) async {


    setBusy(true);

    pushNotificationInstant();
    login.subscribeToken(context);
    await _checkVersion(context);
    await getDashboardData(context);

    await getAttendanceData(context, 'All');
    dataMap = {
      "On Time": double.parse(dashboard?.totalOntime.toString() ?? "0"),
      "Late": double.parse(dashboard?.totalLates.toString() ?? "0"),
    };
    setBusy(false);
    await _requestNotificationPermission(context);
  }


  // getAttendanceData(BuildContext context, String Status) async {
  //   alldata.clear();
  //   all.clear();
  //   var newsResponse = await runBusyFuture(apiService.attendance(context));
  //   newsResponse.when(success: (dataNew) async {
  //     if ((dataNew.forms?.length ?? 0) > 0) {
  //       //storeAttendanceData = dataNew.forms?.toList() ?? [];
  //       //  print("storeAttendanceData: $storeAttendanceData");
  //       int lastIndex = (dataNew.forms?.length ?? 0);
  //       dataNew.forms
  //           ?.getRange((lastIndex - 28), lastIndex)
  //           .toList()
  //           .reversed
  //           .toList()
  //           .forEach((element) {
  //         //print("lastIndex$lastIndex");
  //         var timeInputFormat = DateFormat('hh:mm a');
  //         var datedInputFormat = DateFormat('EE dd/MM');
  //         var attendstatus=element.attendStatus.toString();
  //         print("Attendance status:${attendstatus}");
  //         DateTime inTime =
  //         DateTime.parse("2020-01-02 ${element.checkIn.toString()}");
  //         var checkIn = timeInputFormat.format(inTime);
  //         DateTime outTime =
  //         DateTime.parse("2020-01-02 ${element.checkOut.toString()}");
  //         var checkOut = timeInputFormat.format(outTime);
  //         var date = datedInputFormat
  //             .format(DateTime.parse(element.attendDate.toString()));
  //         all.add(AttendenceTableData(
  //             date: date,
  //             checkIn: checkIn,
  //             checkOut: checkOut,
  //             Attendstatus: attendstatus,
  //             formetedDate: DateTime.parse(element.attendDate.toString()),
  //             statusColor: colorSelection(element.attendStatus.toString(),
  //             ),
  //
  //
  //         ));
  //         alldata.add(AttendenceTableData(
  //           date: date,
  //           checkIn: checkIn,
  //           checkOut: checkOut,
  //           Attendstatus: attendstatus,
  //           formetedDate: DateTime.parse(element.attendDate.toString()),
  //           statusColor: colorSelection(element.attendStatus.toString(),
  //           ),
  //
  //
  //         ));
  //        // print("all: $all");
  //
  //       }
  //
  //       );
  //
  //
  //
  //       //filterListsByStatus(selectedTitle);
  //     } else {
  //       Constants.customWarningSnack(context, "Attendence not found");
  //     }
  //   }, failure: (error) {
  //     Constants.customErrorSnack(context, error.toString());
  //   });
  // }

  getAttendanceData(BuildContext context, String Status) async {
    alldata.clear();
    all.clear();
    var newsResponse = await runBusyFuture(apiService.attendance(context));
    newsResponse.when(success: (dataNew) async {
      if ((dataNew.forms?.length ?? 0) > 0) {
        dataNew.forms?.forEach((element) {
          var timeInputFormat = DateFormat('hh:mm a');
          var datedInputFormat = DateFormat('EE dd/MM');
          var attendstatus = element.attendStatus.toString();
          print("Attendance status: $attendstatus");
          DateTime inTime =
          DateTime.parse("2020-01-02 ${element.checkIn.toString()}");
          var checkIn = timeInputFormat.format(inTime);
          DateTime outTime =
          DateTime.parse("2020-01-02 ${element.checkOut.toString()}");
          var checkOut = timeInputFormat.format(outTime);
          var date = datedInputFormat
              .format(DateTime.parse(element.attendDate.toString()));
          all.add(AttendenceTableData(
            date: date,
            checkIn: checkIn,
            checkOut: checkOut,
            Attendstatus: attendstatus,
            formetedDate: DateTime.parse(element.attendDate.toString()),
            statusColor: colorSelection(element.attendStatus.toString()),
          ));
          alldata.add(AttendenceTableData(
            date: date,
            checkIn: checkIn,
            checkOut: checkOut,
            Attendstatus: attendstatus,
            formetedDate: DateTime.parse(element.attendDate.toString()),
            statusColor: colorSelection(element.attendStatus.toString()),
          ));
        });
      } else {
        Constants.customWarningSnack(context, "Attendance not found");
      }
    }, failure: (error) {
      Constants.customErrorSnack(context, error.toString());
    });
  }

  void filterListsByStatus(BuildContext context, String status) {
    setBusy(true);
    alldata.clear();
    //print(all.length);
    if (status.trim() == "All") {
      for (int i = 0; i < all.length; i++) {
        alldata.add(AttendenceTableData(
            date: all[i].date,
            checkIn: all[i].checkIn,
            checkOut: all[i].checkOut,
            Attendstatus: all[i].Attendstatus,
            formetedDate: DateTime.now(),
            statusColor: colorSelection(all[i].Attendstatus.toString(),
            ))
        );
      }
    } else {
      for (int i = 0; i < all.length; i++) {
        if (all[i].Attendstatus == "${status}") {
          alldata.add(AttendenceTableData(
              date: all[i].date,
              checkIn: all[i].checkIn,
              checkOut: all[i].checkOut,
              Attendstatus: all[i].Attendstatus,
              formetedDate: DateTime.now(),
              statusColor: colorSelection(all[i].Attendstatus.toString(),
              )));
        }
      }

      print("${alldata.length}");
    }
    setBusy(false);
  }

  Color colorSelection(String title) {
    switch (title) {
      case "Late":
        {
          return Colors.red;
        }
      case "Half Day":
        {
          return Colors.purple;
        }

      case "Absent":
        {
          return Colors.orange;
        }
      case "On Time":
        {
          return Colors.green;
        }

      case "Weekend":
        {
          return AppColors.primary;
        }

      default:
        {
          return AppColors.primary;
        }
    }
  }

  getDashboardData(BuildContext context,) async {
    var newsResponse = await runBusyFuture(apiService.dashboard(context));
    newsResponse.when(success: (data) async {
      if (data.email != null) {
        dashboard = data;
      } else {
        Constants.customWarningSnack(context, data.loginMsg.toString());

      }
    }, failure: (error) {
      Constants.customErrorSnack(context, error.toString());
    });
  }

  Future<void> _checkVersion(BuildContext context) async {
    try {
      var status = await InAppUpdate.checkForUpdate();
      if (status.updateAvailability == UpdateAvailability.updateAvailable) {
        await InAppUpdate.performImmediateUpdate();
      } else {
        // No update available
      }
    } catch (e) {
      print(e);
    }
  }

  void pushNotificationInstant() {
    FirebaseMessaging.instance.getInitialMessage().then(
          (message) {
        print("FirebaseMessaging.instance.getInitialMessage");

        print("New Notification Navigator");
      },
    );

    FirebaseMessaging.onMessage.listen(
          (message) {
        print("FirebaseMessaging.onMessage.listen");
        if (message.notification != null) {
          print(message.notification!.title);
          print(message.notification!.body);
          print("message.data2222");
          LocalNotificationService.createAndDisplayNotification(message);
        }
      },
    );
    FirebaseMessaging.onMessageOpenedApp.listen(
          (message) {
        print("FirebaseMessaging.onMessageOpenedApp.listen");
        if (message.notification != null) {
          print(message.notification!.title);
          print(message.notification!.body);
          print("message.data");
        }
      },
    );


  }
  Future<void> _requestNotificationPermission(BuildContext context) async {
    PermissionStatus status = await Permission.notification.status;

    if (status.isDenied || status.isPermanentlyDenied) {
      bool userAccepted = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Enable Notifications'),
            content: Text(
                'To stay updated with the latest information, please enable notifications in the app settings.'),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: Text('Open Settings'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        },
      );

      if (userAccepted) {
        await openAppSettings();
      }
    }
  }

}