import 'package:flutter/material.dart';

class LearningItem extends StatelessWidget {
  final IconData icon;
  final String name;
  LearningItem({@required this.icon, @required this.name});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon),
            Text(name),
          ],
        ),
      ),
    );
  }
}
