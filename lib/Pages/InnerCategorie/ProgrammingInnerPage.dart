import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProgrammingInnerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Programming Languages",
          style: TextStyle(color: Colors.blueGrey),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
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
