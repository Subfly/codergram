import 'package:codergram/Pages/LearningPage.dart';
import 'package:codergram/Pages/SettingsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PageCollector extends StatefulWidget {
  @override
  _PageCollectorState createState() => _PageCollectorState();
}

class _PageCollectorState extends State<PageCollector> {
  GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  final List<String> _pageNames = [
    "Codergram",
    "Learn",
    "Editor",
  ];
  final List<Color> _colors = [
    Color(0xFF353531),
    Color(0XFFEC4E20),
    Color(0XFFFF9505),
  ];
  final List<Widget> _bodies = [
    LearningPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        backgroundColor: _colors[_currentIndex],
        leading: IconButton(
          icon: Icon(Feather.menu),
          onPressed: () => _scaffKey.currentState.openDrawer(),
        ),
        title: Text("${_pageNames[_currentIndex]}"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Feather.settings),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SettingPage(),
              ),
            ),
          )
        ],
      ),
      body: _bodies[_currentIndex],
      drawer: Drawer(),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.blueGrey,
      //   currentIndex: _currentIndex,
      //   onTap: (i) {
      //     setState(() {
      //       _currentIndex = i;
      //     });
      //   },
      //   selectedItemColor: Colors.white,
      //   elevation: 10,
      //   type: BottomNavigationBarType.shifting,
      //   showSelectedLabels: false,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Feather.home),
      //       title: Text("Home"),
      //       backgroundColor: _colors[_currentIndex],
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Feather.code),
      //       title: Text("Learn"),
      //       backgroundColor: _colors[_currentIndex],
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Octicons.comment_discussion),
      //       title: Text("Editor"),
      //       backgroundColor: _colors[_currentIndex],
      //     ),
      //   ],
      // ),
    );
  }
}
