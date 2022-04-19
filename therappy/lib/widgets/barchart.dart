/// Bar chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

/// Sample ordinal data type.
class ProgressSeries {
  final String date;
  final int mins;
  final charts.Color barColor;

  ProgressSeries(
      {required this.date, required this.mins, required this.barColor});
}

class DailyChart extends StatelessWidget {
  final List<ProgressSeries> data;

  const DailyChart({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ProgressSeries, String>> series = [
      charts.Series(
        id: "progress",
        data: data,
        domainFn: (ProgressSeries series, _) => series.date,
        measureFn: (ProgressSeries series, _) => series.mins,
        colorFn: (ProgressSeries series, _) => series.barColor,
      )
    ];

    return charts.BarChart(series, animate: true);
  }
}
