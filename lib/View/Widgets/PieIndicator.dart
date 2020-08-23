import 'dart:async';
import 'dart:math';

import 'package:charts_package/Models/Colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class PieIndicator extends StatefulWidget {

  bool isDark;
  double radius;
  double lineWidth;

  PieIndicator({this.isDark, this.radius = 150.0, this.lineWidth = 18.0});

  @override
  _PieIndicatorState createState() => _PieIndicatorState();
}

class _PieIndicatorState extends State<PieIndicator> {
  double loading = 72.0, percent = 0.72;

  @override
  void initState() {
    super.initState();
    var rng = new Random();
    percent = rng.nextDouble();
    loading = percent * 100;

    Timer.periodic(Duration(seconds: 30), (timer) {
      percent = rng.nextDouble();
      loading = percent * 100;
      setState(() {});
    });
  }



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      physics: PageScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CircularPercentIndicator(
            radius: widget.radius,
            lineWidth: widget.lineWidth,
            animation: false,
            percent: percent,
            animateFromLastPercent: true,
            backgroundColor: widget.isDark ? pastelIndicatorDarkBackground : pastelIndicatorBackground,
            center: new Text(
              "${loading.toStringAsFixed(0)}%",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: getIndicatorColor(index),
              ),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: getIndicatorColor(index),
          ),
        );
      },
    );
  }


  Color getIndicatorColor(int index){
    switch(index){
      case 0:
        return pastelBlue;
      case 1:
        return pastelRed;
      case 2:
        return pastelTurquoisBblue;
    }
  }

}
