import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DrawerInside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 10,
        ),
        Container(
          margin: EdgeInsets.all(28),
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(
              32,
            ),
          ),
          child: Center(
            child: Text(
              "Codergram",
              style: TextStyle(
                fontSize: 46,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 12,
        ),
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(
              32,
            ),
          ),
          child: Center(
            child: Text(
                "An app from programmers to programmers. It is an opensource project. You can search and contribute to the project in GitHub!"),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 50,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            decoration: BoxDecoration(
              color: Color(0xFF85bb65),
              borderRadius: BorderRadius.circular(
                32,
              ),
            ),
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
