import 'package:flutter/material.dart';

/* import and use with GoalWidget(goal, done, trail)*/
/* goal = a String with the name of the goal eg. "Streak!" */
/* explanation = a String with the explanation of the goal eg. "Five day streak" */
/* done = true or false depending on the status of the goal eg. false */
/* trail = is the trailing image that is shown on the right side of the card eg. Icon(icons.check)*/
class GoalWidget extends StatelessWidget {
  const GoalWidget({
    Key? key,
    required this.goal,
    required this.explanation,
    required this.done,
    required this.trail,
  }) : super(key: key);

  final String goal;
  final String explanation;
  final bool done;
  final Icon trail;

  @override
  Widget build(BuildContext context) {
    return done
        ? Card(
            child: ListTile(
              leading: const Icon(Icons.check_circle),
              title: Text(goal),
              subtitle: Text(explanation),
              trailing: trail,
            ),
            margin: const EdgeInsets.all(5.0),
            color: Colors.grey[300],
            elevation: 3,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          )
        : Card(
            child: ListTile(
              leading: const Icon(Icons.run_circle),
              title: Text(goal),
              subtitle: Text(explanation),
              trailing: trail,
              contentPadding: const EdgeInsets.all(16.0),
            ),
            margin: const EdgeInsets.all(5.0),
            elevation: 3,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          );
  }
}
