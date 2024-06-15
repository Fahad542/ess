import 'package:ess/src/styles/app_colors.dart';
import 'package:ess/src/styles/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieCharNewData {
  final String title;

  PieCharNewData({required this.title});
}

class PieCharNew extends  StatelessWidget {
  final Map<String, double> dataMap;

  const PieCharNew({Key? key, required this.dataMap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 1600),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 2.5,
      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 22,
      colorList: [
        Color(0xff0dda17),
        Color(0xfff51604),
      ],
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14,
          color: AppColors.primary,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
        chartValueStyle: TextStyle(
          fontSize: 14,
          color: Colors.black, // Customize the chart values text color
          fontWeight: FontWeight.normal,
        ),
      ),


       // Adjust the padding around chart values
    ));

  }
}




