import 'package:flutter/material.dart';

/* Topbar - main content from views - bottom bar */
class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return const Text('hi! I am the progress view :)');
  }
}
