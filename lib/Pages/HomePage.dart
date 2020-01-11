import 'package:codergram/Widgets/CalendarWidget.dart';
import 'package:codergram/Widgets/LearnWidget.dart';
import 'package:codergram/Widgets/NotesWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LearnWidget(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NoteWidget(),
              CalendarWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
