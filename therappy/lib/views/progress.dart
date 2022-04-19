import 'package:flutter/material.dart';
import 'package:therappy/widgets/goal_widget.dart';
import 'package:therappy/widgets/inner_shadow_card.dart';

/* Topbar - main content from views - bottom bar */
class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
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
        Card(
          margin: const EdgeInsets.only(bottom: 15.0),
          color: Colors.teal[50],
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Icon(
                Icons.insert_chart,
                size: 225.0,
              ),
            ],
          ),
        ),
        /* GOALS */
        InnerShadowCard(
          child: SizedBox(
            height: 300.0,
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
          //style: ElevatedButton.styleFrom(
          // padding: const EdgeInsets.symmetric(vertical: 30.0)),
          child: const Text('See Therapy Plan'),
        )
      ],
    );
  }
}
