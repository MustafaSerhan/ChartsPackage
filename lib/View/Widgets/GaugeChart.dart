import 'dart:math';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_package/Models/Colors.dart';
import 'package:flutter/material.dart';

class GaugeChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  GaugeChart(this.seriesList, {this.animate});

  factory GaugeChart.withSampleData() {
    return new GaugeChart(
      _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(
      seriesList,
      animate: animate,
      defaultRenderer: new charts.ArcRendererConfig(
        arcWidth: 8,
        strokeWidthPx: 10.0,
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<GaugeSegment, String>> _createSampleData() {
    final data = [
      new GaugeSegment('Low', Random().nextInt(99) + 1, charts.ColorUtil.fromDartColor(pastelBlue), charts.ColorUtil.fromDartColor(pastelBackground)),
      new GaugeSegment('test', Random().nextInt(99) + 1, charts.ColorUtil.fromDartColor(pastelRed), charts.ColorUtil.fromDartColor(pastelBackground)),
      new GaugeSegment('wer', Random().nextInt(99) + 1, charts.ColorUtil.fromDartColor(pastelTurquoisBblue), charts.ColorUtil.fromDartColor(pastelBackground)),
    ];

    return [
      charts.Series<GaugeSegment, String>(
        id: 'Data',
        data: data,
        domainFn: (GaugeSegment segment, _) => segment.segment,
        measureFn: (GaugeSegment segment, _) => segment.size,
        colorFn: (GaugeSegment segment, _) => segment.chartColor,
        patternColorFn: (GaugeSegment segment, _) => segment.backgroundColor,
      ),
    ];
  }
}

class GaugeSegment {
  final String segment;
  final int size;
  final charts.Color chartColor;
  final charts.Color backgroundColor;

  GaugeSegment(this.segment, this.size, this.chartColor, this.backgroundColor);
}
