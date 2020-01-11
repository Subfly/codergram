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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 5,
            ),
            LearningItem(
              icon: Feather.code,
              name: "Algorithms & Structures",
              color: Colors.amber,
            ),
            LearningItem(
              icon: MaterialCommunityIcons.lock_pattern,
              name: "Design Patterns",
              color: Colors.indigo,
            ),
            LearningItem(
              icon: FontAwesome5Brands.java,
              name: "Java",
              color: Colors.red,
            ),
            LearningItem(
              icon: FontAwesome.microchip,
              name: "C/C++/C#",
              color: Colors.blueGrey,
            ),
            LearningItem(
              icon: FontAwesome5Brands.python,
              name: "Python",
              color: Colors.green,
            ),
            LearningItem(
              icon: SimpleLineIcons.wrench,
              name: "Assembly",
              color: Colors.teal,
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
              icon: Ionicons.logo_javascript,
              name: "Javascript",
              color: Colors.yellow.shade700,
            ),
            LearningItem(
              icon: AntDesign.google,
              name: "Dart/Flutter",
              color: Colors.blueAccent,
            ),
            LearningItem(
              icon: AntDesign.facebook_square,
              name: "React Native",
              color: Colors.lightBlueAccent,
            ),
            LearningItem(
              icon: AntDesign.android1,
              name: "Kotlin/Android",
              color: Colors.green,
            ),
            LearningItem(
              icon: AntDesign.apple_o,
              name: "Swift/IOS",
              color: Colors.grey,
            ),
            LearningItem(
              icon: MaterialCommunityIcons.palette_outline,
              name: "UI/UX",
              color: Colors.pink,
            ),
            Container(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
