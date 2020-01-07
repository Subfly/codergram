import 'package:codergram/Widgets/LearningItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LearningPage extends StatefulWidget {
  @override
  _LearningPageState createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 5,
          ),
          LearningItem(
            icon: FontAwesome5Brands.java,
            name: "Java",
            color: Colors.red,
          ),
          LearningItem(
            icon: Ionicons.logo_javascript,
            name: "Javascript",
            color: Colors.yellow,
          ),
          LearningItem(
            icon: FontAwesome5Brands.html5,
            name: "HTML",
            color: Colors.orange,
          ),
          LearningItem(
            icon: FontAwesome5Brands.css3,
            name: "CSS",
            color: Colors.blue,
          ),
          LearningItem(
            icon: FontAwesome.microchip,
            name: "C/C++/C#",
            color: Colors.blueGrey,
          ),
          LearningItem(
            icon: AntDesign.smileo,
            name: "Dart/Flutter",
            color: Colors.blueAccent,
          ),
          LearningItem(
            icon: FontAwesome5Brands.python,
            name: "Python",
            color: Colors.green,
          ),
          Container(
            height: 10,
          )
        ],
      ),
    );
  }
}
