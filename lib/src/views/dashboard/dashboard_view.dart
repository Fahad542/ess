import 'package:ess/generated/assets.dart';
import 'package:ess/src/base/utils/utils.dart';
import 'package:ess/src/configs/app_setup.router.dart';
import 'package:ess/src/services/local/navigation_service.dart';
import 'package:ess/src/shared/loading_indicator.dart';
import 'package:ess/src/shared/spacing.dart';
import 'package:ess/src/shared/top_app_bar.dart';
import 'package:ess/src/styles/app_colors.dart';
import 'package:ess/src/styles/text_theme.dart';
import 'package:ess/src/views/dashboard/widget/pie_cart.dart';
import 'package:ess/src/views/dashboard/widget/title_widget.dart';
import 'package:ess/src/views/login/login_view_model.dart';
import 'package:ess/src/views/your_attandence/widget/attendence_data_table.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:stacked/stacked.dart';


import 'dashboard_view_model.dart';
class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}
LoginViewModel login=LoginViewModel();
class _DashboardViewState extends State<DashboardView> {
String status="";
bool _showWebView = false;
  @override
  Widget build(BuildContext context) {
    return   ViewModelBuilder<DashboardViewModel>.reactive(

      builder: (viewModelContext, model, child) => Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                HomeAppBar(
                    name: model.currentUser?.userName ??
                        model.currentUser?.email ??
                        "null",
                    onMenuTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    onNotificationTap: () {
                      NavService.notification();
                    }
                    ),
                model.isBusy
                    ? Center(
                    child: LoadingIndicator())
                    : SizedBox(
                    height: context.screenSize().height - 130,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          DigitalClock(

                            digitAnimationStyle: Curves.easeOutCirc,
                            is24HourTimeFormat: false,
                            areaDecoration: BoxDecoration(
                              color: AppColors.primary.withOpacity(0.1),
                              border: Border.all(color: AppColors.primary, width: 1),
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: AppColors.secondary.withOpacity(0.1),// Shadow color
                              //     spreadRadius: 2, // Spread radius
                              //     blurRadius: 5,   // Blur radius
                              //     offset: Offset(0, 3), // Shadow offset
                              //   ),
                              // ],
                            ),
                            secondDigitTextStyle: TextStyling.extraBold24.copyWith(
                              color: AppColors.secondary,
                            ),
                            hourMinuteDigitTextStyle: TextStyling.extraBold24.copyWith(
                              color: AppColors.primary,
                              fontSize: 80,
                            ),
                            amPmDigitTextStyle: TextStyling.extraBold24.copyWith(
                              color: AppColors.secondary,
                            ),
                          ),
                          VerticalSpacing(20),
                          PieCharNew(
                            dataMap: model.dataMap,
                          ),


                          VerticalSpacing(30),
                          Text(
                            "LEAVE BALANCE",
                            style: TextStyling.bold22.copyWith(
                                color: AppColors.primary,
                               ),
                          ),
                          VerticalSpacing(12),
                          Padding(
                            padding: EdgeInsets.fromLTRB(18, 0, 18, 0),

                            child:
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,

                              child: Row(



                                children: [

                                  leavesCart(
                                      "Annual Leaves",
                                      model.dashboard?.annualLeaves
                                          .toString() ??
                                          "0",
                                      Assets.imagesAnnual),

                                  SizedBox(width: 10,),

                                  leavesCart(
                                      "Casual Leaves",
                                      model.dashboard?.casualLeaves
                                          .toString() ??
                                          "0",
                                      Assets.imagesCasual),
                                  SizedBox(width: 10,),
                                  leavesCart(
                                      "Sick Leaves",
                                      model.dashboard?.sickLeaves.toString() ??
                                          "0",
                                      Assets.imagesSick),

                                ],
                              ),
                            ),


                          ),
                          VerticalSpacing(30),
                          Text(
                            "LAST 30 DAYS ATTENDANCE",
                            style: TextStyling.bold22.copyWith(
                                color: AppColors.primary,
                               ),
                          ),
                          VerticalSpacing(10),
                          SizedBox(height: 10,),
                          Padding(
                              padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(width: 10,),

                                      TitleWidget(
                                        title: "All",
                                        color: status=="All" ? Colors.black.withOpacity(1) :Colors.indigo,
                                        //colors: Colors.grey,

                                        onTap: () {
                                          setState(() {
                                            status="All";

                                          });
                                          // Add your condition here
                                          model.filterListsByStatus(context,"All");
                                        },
                                      ),



                                      SizedBox(width: 10),
                                      TitleWidget(

                                        title: "On Time",
                                        color: status=="On Time" ? Colors.black.withOpacity(1): Colors.green,
                                        //colors: Colors.black,
                                        onTap: () {
                                          setState(() {
                                            status="On Time";
                                          });
                                         model.filterListsByStatus(context,"On Time");


                                        },
                                        // Adjust this condition
                                      ),
                                      SizedBox(width: 10),
                                      TitleWidget(

                                        title: "Half Day",
                                        color: status=="Half Day" ? Colors.black.withOpacity(1):Colors.purple,
                                        //colors: Colors.black,
                                        onTap: () {
                                          setState(() {
                                            status="Half Day";
                                          });
                                          model.filterListsByStatus(context,"Half Day");
                                          },

                                      ),
                                      SizedBox(width: 10),
                                      TitleWidget(

                                        title: "Late",
                                        color: status=="Late" ? Colors.black.withOpacity(1) :Colors.red,
                                        //colors: Colors.black,
                                        onTap: () {
                                          setState(() {
                                            status="Late";
                                          });
                                          model.filterListsByStatus(context,"Late");                                        },

                                      ),
                                      SizedBox(width: 10),
                                      TitleWidget(

                                        title: "Absent",
                                        color: status=="Absent" ? Colors.black.withOpacity(1) : Colors.orange,
                                        //colors: Colors.black,
                                        onTap: () {
                                          setState(() {
                                            status="Absent";
                                          }
                                          );
                                          model.filterListsByStatus(context,"Absent");
                                        },

                                      ),
                                      SizedBox(width: 10),
                                      TitleWidget(

                                        title: "Weekend",
                                        color:status=="Weekend" ? Colors.black.withOpacity(1) : Colors.blue,
                                       // colors: Colors.black,
                                        onTap: () {
                                          setState(() {
                                            status="Weekend";
                                          }
                                          );
                                          model.filterListsByStatus(context,"Weekend");
                                        },

                                      ),

                                    ],
                                  )

                              )),
                          VerticalSpacing(5),


                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              height: 400,

//margin: EdgeInsets.symmetric(vertical: 10,),

                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary, width: 1),
                                borderRadius: BorderRadius.circular(10),

                                color: AppColors.secondary.withOpacity(0.1),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.secondary.withOpacity(0.1),// Shadow color
                                    spreadRadius: 2, // Spread radius
                                    blurRadius: 5,   // Blur radius
                                    offset: Offset(0, 3), // Shadow offset
                                  ),
                                ],


                              ),
                              child:  model.isBusy
                                  ? Center(child: LoadingIndicator())
                                  : AttendenceDataTable(
                                heading: model.heading,
                                data:model.alldata,
                                onTap: (AttendenceTableData value) {
                                  NavService.applyLeave(arguments: ApplyLeaveViewArguments(date: value.formetedDate.toString()));
                                },
                              ),
                            ),
                          ),


                          // VerticalSpacing(20),
                          // SizedBox.fromSize(),
                          // InkWell(
                          //   onTap: () {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(builder: (context) => WebViewPage()),
                          //     );
                          //   },
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(4.0),
                          //     child: ClipRRect(
                          //       borderRadius: BorderRadius.circular(8),
                          //       child: Image.network(
                          //         'https://premierspulse.com/ess/assets/lms.gif',
                          //         loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          //           if (loadingProgress == null) {
                          //             return child;
                          //           } else {
                          //             final expectedTotalBytes = loadingProgress.expectedTotalBytes;
                          //             return Center(
                          //               child: Padding(
                          //                 padding: const EdgeInsets.all(8.0),
                          //                 child: CircularProgressIndicator(
                          //                   value: expectedTotalBytes != null
                          //                       ? loadingProgress.cumulativeBytesLoaded / expectedTotalBytes
                          //                       : null,
                          //                 ),
                          //               ),
                          //             );
                          //           }
                          //         },
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      )
                      ),
                      )
              ],
            ),
          )

      ),

      viewModelBuilder: () => DashboardViewModel(),
      onModelReady: (model) => model.init(context),
    );
  }


  leavesCart(String title, String count, String icon) {
    return Container(
      width: 115,
      height: 110,
      decoration: BoxDecoration(
        color: AppColors.secondary.withOpacity(0.1),

        border: Border.all(color: AppColors.primary, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(
            icon,
            height: 50,
            width: 50,
          ),
          Text(
            title,
            style: TextStyling.text12.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
          ),
          Text(
            count,
            style: TextStyling.text14.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}







