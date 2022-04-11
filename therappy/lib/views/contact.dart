import 'package:flutter/material.dart';

/* Topbar - main content from views - bottom bar */
class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return const Text('Hi! I am the Contact view ;)');
  }
}
