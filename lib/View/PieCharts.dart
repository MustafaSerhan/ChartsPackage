import 'package:charts_package/Models/Colors.dart';
import 'package:charts_package/View/Widgets/PieIndicator.dart';
import 'package:flutter/material.dart';

import 'Widgets/GaugeChart.dart';


class PieCharts extends StatefulWidget {
  @override
  _PieChartsState createState() => _PieChartsState();
}

class _PieChartsState extends State<PieCharts> {
  double loading = 72.0, percent = 0.72;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pastelBackground,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: [
          //Light Pie Indicator
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: PieIndicator(
              isDark: false,
            ),
          ),
          //Dark Pie Indicator
          Container(
            decoration: BoxDecoration(
              color: pastelDarkTheme,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: PieIndicator(
              isDark: true,
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: GaugeChart.withSampleData(),
          ),

          Container(
            decoration: BoxDecoration(
              color: pastelDarkTheme,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: GaugeChart.withSampleData(),
          ),


        ],
      ),
    );
  }
}
