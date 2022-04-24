import 'package:flutter/material.dart';

/* import and use with PostMenu()*/

class PostMenu extends StatelessWidget {
  const PostMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(Icons.more_horiz),
        itemBuilder: (context) => [
              PopupMenuItem(
                  child: Row(children: const <Widget>[
                Icon(Icons.edit, color: Colors.teal),
                SizedBox(width: 10),
                Text("Edit")
              ])),
              PopupMenuItem(
                  child: Row(children: const <Widget>[
                Icon(Icons.delete, color: Colors.teal),
                SizedBox(width: 10),
                Text("Delete")
              ]))
            ]);
  }
}
