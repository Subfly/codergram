import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SlackPage extends StatefulWidget {
  @override
  _SlackPageState createState() => _SlackPageState();
}

class _SlackPageState extends State<SlackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          "Slack",
          style: TextStyle(color: Colors.blueGrey),
        ),
        leading: IconButton(
          icon: Icon(
            Feather.arrow_left,
            color: Colors.blueGrey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
