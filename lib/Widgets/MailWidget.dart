import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:codergram/Pages/CalendarPage.dart';
import 'package:codergram/Pages/MailPage.dart';
import 'package:codergram/Pages/NotesPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MailWidget extends StatefulWidget {
  @override
  _MailWidgetState createState() => _MailWidgetState();
}

class _MailWidgetState extends State<MailWidget> {
  List<String> _items = [
    "Mails",
    "Send",
    "Check",
    "Organize",
  ];
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
                Feather.mail,
                size: 52,
                color: Colors.white,
              ),
              Container(
                height: 10,
              ),
              Container(
                child: FadeAnimatedTextKit(
                  duration: Duration(milliseconds: 1600),
                  isRepeatingAnimation: true,
                  text: _items,
                  textStyle: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  totalRepeatCount: 12323213,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
