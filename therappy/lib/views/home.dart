import 'package:flutter/material.dart';

/* Topbar - main content from views - bottom bar */
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Text('Hi! I am the Home view ;)');
  }
}
