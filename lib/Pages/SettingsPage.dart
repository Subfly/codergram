import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.blueGrey,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Feather.arrow_left,
            color: Colors.blueGrey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
      ),
    );
  }
}
