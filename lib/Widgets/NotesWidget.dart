import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:codergram/Pages/NotesPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NoteWidget extends StatefulWidget {
  @override
  _NoteWidgetState createState() => _NoteWidgetState();
}

class _NoteWidgetState extends State<NoteWidget> {
  List<String> _items = [
    "Notes",
    "To-Do",
    "Check",
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => new NotesPage(),
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
                FontAwesome.sticky_note_o,
                size: 52,
                color: Colors.white,
              ),
              Container(
                height: 10,
              ),
              Container(
                child: FadeAnimatedTextKit(
                  duration: Duration(milliseconds: 1700),
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
