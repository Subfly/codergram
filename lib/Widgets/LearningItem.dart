import 'package:flutter/material.dart';

class LearningItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final Color color;
  LearningItem(
      {@required this.icon, @required this.name, @required this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width - 10,
        height: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
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
