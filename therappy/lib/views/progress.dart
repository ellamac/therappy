import 'package:flutter/material.dart';
import 'package:therappy/widgets/goal_widget.dart';
import 'package:therappy/widgets/inner_shadow_card.dart';
import 'package:therappy/widgets/barchart.dart';
import 'package:charts_flutter/flutter.dart' as charts;

/* Topbar - main content from views - bottom bar */
class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  final List<ProgressSeries> data = [
    ProgressSeries(
      date: "15.4.",
      mins: 60,
      barColor: charts.ColorUtil.fromDartColor(Colors.orange.shade100),
    ),
    ProgressSeries(
        date: "16.4.",
        mins: 15,
        barColor: charts.ColorUtil.fromDartColor(Colors.orange.shade300)),
    ProgressSeries(
        date: "17.4.",
        mins: 25,
        barColor: charts.ColorUtil.fromDartColor(Colors.orange.shade500)),
    ProgressSeries(
      date: "18.4.",
      mins: 20,
      barColor: charts.ColorUtil.fromDartColor(Colors.orange.shade100),
    ),
    ProgressSeries(
      date: "19.4.",
      mins: 45,
      barColor: charts.ColorUtil.fromDartColor(Colors.orange.shade300),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /* PROGRESS TITLE */
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          children: const [Icon(Icons.arrow_back), Text("Progress"), Spacer()],
        ),
        /* PROGRESS CHART */
        SizedBox(
            height: 275,
            child: Card(
              color: Colors.teal[50],
              margin: const EdgeInsets.only(bottom: 15.0),
              elevation: 3,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(child: DailyChart(data: data)),
                /*Icon(
                Icons.insert_chart,
                size: 225.0,
              ),*/
              ),
            )),
        /* GOALS */
        InnerShadowCard(
          child: SizedBox(
            height: 275.0,
            child: ListView(
              children: const <Widget>[
                GoalWidget(
                  goal: "Current Goal",
                  explanation: "Complete grip strength tutorial",
                  done: false,
                  trail: Icon(Icons.wb_sunny),
                ),
                GoalWidget(
                  goal: "Current Goal",
                  explanation: "Complete 3 weeks in a row!",
                  done: false,
                  trail: Icon(Icons.wb_sunny),
                ),
                GoalWidget(
                  goal: "Met Goal",
                  explanation: "Mastered 10 exercises!",
                  done: true,
                  trail: Icon(Icons.wb_sunny),
                ),
                GoalWidget(
                  goal: "Met Goal",
                  explanation: "2 Weeks in a row!",
                  done: true,
                  trail: Icon(Icons.wb_sunny),
                ),
                GoalWidget(
                  goal: "Met Goal",
                  explanation: "1 Week in a row!",
                  done: true,
                  trail: Icon(Icons.wb_sunny),
                ),
              ],
            ),
          ),
        ),
        /* THERAPY PLAN BUTTON */
        ElevatedButton(
          // ignore: avoid_print
          onPressed: () => print('hi'),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 30.0)),
          child: const Text('See Therapy Plan'),
        )
      ],
    );
  }
}
