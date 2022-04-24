import 'package:flutter/material.dart';
import 'package:therappy/widgets/post_menu_widget.dart';

/* import and use with PostWidget(name, message, isSelf)*/
/* name = a String with the name the user who posted message (e.g. "Merja Järvinen") */
/* message = a String with the content of the message posted */
/* isSelf = true or false depending if the poster is the current account owner */

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required this.name,
    required this.message,
    required this.isSelf,
  }) : super(key: key);

  final String name;
  final String message;
  final bool isSelf;

  @override
  Widget build(BuildContext context) {
    return isSelf
        ? Card(
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              /*container with initials of poster*/
              leading: Container(
                  decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 40,
                  width: 40,
                  child: Center(
                      child: Text(getInitials(name),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)))),
              /*Name of poster as title*/
              title: Text(name),
              /*content of posted message*/
              subtitle: Column(
                //used align widget as some of the text was strangely aligned, this fixed it
                children: <Widget>[
                  Align(alignment: Alignment.topLeft, child: Text(message)),
                  const Align(
                      alignment: Alignment.bottomRight, child: PostMenu()),
                ],
              ),
            ),
            margin: const EdgeInsets.all(5.0),
            elevation: 3,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ))
        : Card(
            child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                /*container with initials of poster*/
                leading: Container(
                    decoration: const BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 40,
                    width: 40,
                    child: Center(
                        child: Text(getInitials(name),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white)))),
                /*Name of poster as title*/
                title: Text(name),
                /*content of posted message*/
                subtitle: Text(message)),
            margin: const EdgeInsets.all(5.0),
            elevation: 3,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ));
  }

/*Helper function to get initials*/
  String getInitials(name) {
    List<String> nameParts = name.split(" ");
    String initials = nameParts[0][0] + nameParts[1][0];

    return initials.toUpperCase();
  }
}
