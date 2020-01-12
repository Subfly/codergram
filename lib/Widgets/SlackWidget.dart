import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:codergram/Pages/LearningPage.dart';
import 'package:codergram/Pages/SlackPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SlackWidget extends StatefulWidget {
  @override
  _SlackWidgetState createState() => _SlackWidgetState();
}

class _SlackWidgetState extends State<SlackWidget> {
  IconData _currentIcon = FontAwesome5Brands.slack;
  List<String> _items = [
    "Slack",
    "Develop",
    "Discuss",
    "Organize",
    "Create",
    "Tap for More",
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => new SlackPage(),
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
              Icon(
                _currentIcon,
                size: 52,
                color: Colors.white,
              ),
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
