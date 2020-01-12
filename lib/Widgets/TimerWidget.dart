import 'package:codergram/Pages/CalendarPage.dart';
import 'package:codergram/Pages/MailPage.dart';
import 'package:codergram/Pages/NotesPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => new MailPage(),
        ),
      ),
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 16, 10, 16),
        color: Color(0xFFC1CEFE),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: (MediaQuery.of(context).size.width / 2) - 30,
          height: 175,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Ionicons.ios_timer,
                size: 52,
                color: Colors.white,
              ),
              Container(
                height: 10,
              ),
              Text(
                "Timer",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
