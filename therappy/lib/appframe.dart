import 'package:flutter/material.dart';
import 'package:therappy/views/progress.dart';
import 'package:therappy/views/community.dart';
import 'package:therappy/views/contact.dart';
import 'package:therappy/views/home.dart';

/* Topbar - main content from views - bottom bar */
class AppFrame extends StatefulWidget {
  const AppFrame({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AppFrame> createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    Home(),
    Progress(),
    Community(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* top bar */
      appBar: AppBar(
        centerTitle: true,
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'menu',
          onPressed: null,
        ),
        title: Text(widget.title, style: Theme.of(context).textTheme.headline1),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            tooltip: 'Open profile',
            onPressed: null,
          )
        ],
      ),

      /* main content from views */
      body: Center(
        child: Container(
            margin: const EdgeInsets.all(15.0),
            child: _pages.elementAt(_selectedIndex)),
      ),

      /* bottom bar */
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'community'),
          BottomNavigationBarItem(
              icon: Icon(Icons.medical_services), label: 'Therapist Inbox'),
        ],
      ),
    );
  }
}
