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
    required this.goalIcon,
    required this.explanation,
    required this.done,
  }) : super(key: key);

  final String goal;
  final IconData goalIcon;
  final String explanation;
  final bool done;

  @override
  Widget build(BuildContext context) {
    return done
        ? Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(
                  goalIcon,
                  color: Colors.white,
                  size: 20,
                ),
                backgroundColor: Colors.amber.shade400,
              ),
              title: Text(goal),
              subtitle: Text(explanation),
              trailing: const Icon(Icons.more_horiz),
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
              leading: CircleAvatar(
                child: Icon(
                  goalIcon,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              title: Text(goal),
              subtitle: Text(explanation),
              trailing: const Icon(Icons.more_horiz),
              minVerticalPadding: 0,
            ),
          );
  }
}
