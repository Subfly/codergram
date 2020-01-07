import 'package:codergram/Pages/GeneralPageArchitecture.dart';
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
      onTap: () {
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => GeneralPageArchitecture(
              color: color,
              title: name,
              icon: icon,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width - 10,
        height: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 42,
            ),
            Container(
              height: 15,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
