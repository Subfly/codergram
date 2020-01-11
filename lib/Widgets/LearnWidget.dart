import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:codergram/Pages/LearningPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LearnWidget extends StatefulWidget {
  @override
  _LearnWidgetState createState() => _LearnWidgetState();
}

class _LearnWidgetState extends State<LearnWidget> {
  IconData _currentIcon = Feather.code;
  List<String> _items = [
    "Learn",
    "Improve",
    "Java",
    "C++",
    "Python",
    "UI / UX",
    "Tap Here"
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => new LearningPage(),
        ),
      ),
      child: Card(
        margin: EdgeInsets.fromLTRB(10, 16, 10, 16),
        color: Color(0xFF7189FF),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          width: MediaQuery.of(context).size.width - 15,
          height: 175,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 250,
                child: FadeAnimatedTextKit(
                  isRepeatingAnimation: true,
                  text: _items,
                  textStyle: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Icon(
                _currentIcon,
                size: 52,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
