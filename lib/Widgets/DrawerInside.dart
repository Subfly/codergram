import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DrawerInside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          child: Center(
            child: Text(
              "Codergram",
              style: TextStyle(fontSize: 46),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Feather.info),
                  Container(
                    width: 10,
                  ),
                  Text("About"),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(EvilIcons.pencil),
                  Container(
                    width: 10,
                  ),
                  Text("Writers"),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(FontAwesome.money),
                  Container(
                    width: 10,
                  ),
                  Text("Support"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
