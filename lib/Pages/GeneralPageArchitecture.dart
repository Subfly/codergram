import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class GeneralPageArchitecture extends StatefulWidget {
  final String title;
  final IconData icon;
  GeneralPageArchitecture({@required this.title, @required this.icon});
  @override
  _GeneralPageArchitectureState createState() =>
      _GeneralPageArchitectureState();
}

class _GeneralPageArchitectureState extends State<GeneralPageArchitecture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.title}",
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
