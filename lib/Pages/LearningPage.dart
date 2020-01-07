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
    return GridView.extent(
      maxCrossAxisExtent: 200.0,
      shrinkWrap: true,
      children: <Widget>[
        LearningItem(
          icon: FontAwesome5Brands.java,
          name: "Java",
        ),
        LearningItem(
          icon: FontAwesome5Brands.java,
          name: "Java",
        ),
        LearningItem(
          icon: FontAwesome5Brands.java,
          name: "Java",
        ),
        LearningItem(
          icon: FontAwesome5Brands.java,
          name: "Java",
        ),
        LearningItem(
          icon: FontAwesome5Brands.java,
          name: "Java",
        ),
        LearningItem(
          icon: FontAwesome5Brands.java,
          name: "Java",
        ),
        LearningItem(
          icon: FontAwesome5Brands.java,
          name: "Java",
        ),
        LearningItem(
          icon: FontAwesome5Brands.java,
          name: "Java",
        ),
      ],
    );
  }
}
