import 'package:codergram/Pages/HomePage.dart';
import 'package:codergram/Pages/SettingsPage.dart';
import 'package:codergram/Widgets/DrawerInside.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PageCollector extends StatefulWidget {
  @override
  _PageCollectorState createState() => _PageCollectorState();
}

class _PageCollectorState extends State<PageCollector> {
  GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(
            Feather.menu,
            color: Colors.blueGrey,
          ),
          onPressed: () => _scaffKey.currentState.openDrawer(),
        ),
        title: Text(
          "Codergram",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.blueGrey,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Feather.settings,
              color: Colors.blueGrey,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SettingPage(),
              ),
            ),
          )
        ],
      ),
      body: HomePage(),
      drawer: Drawer(
        child: DrawerInside(),
      ),
    );
  }
}
