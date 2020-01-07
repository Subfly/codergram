import 'package:flutter/material.dart';

class GeneralPageArchitecture extends StatefulWidget {
  final String title;
  final Color color;
  final IconData icon;
  GeneralPageArchitecture(
      {@required this.title, @required this.color, @required this.icon});
  @override
  _GeneralPageArchitectureState createState() =>
      _GeneralPageArchitectureState();
}

class _GeneralPageArchitectureState extends State<GeneralPageArchitecture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
        centerTitle: true,
        backgroundColor: widget.color,
        actions: <Widget>[
          Icon(widget.icon),
          Container(
            width: 20,
          ),
        ],
      ),
    );
  }
}
