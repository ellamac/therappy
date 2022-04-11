import 'package:flutter/material.dart';

/* Topbar - main content from views - bottom bar */
class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return const Text('hi! I am the Community view :)');
  }
}
