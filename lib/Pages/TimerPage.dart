import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Timer",
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
