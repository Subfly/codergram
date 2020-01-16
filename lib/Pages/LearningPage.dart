import 'package:codergram/Pages/GeneralPageArchitecture.dart';
import 'package:codergram/Pages/InnerCategorie/AlgoInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/DatabaseInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/DesignPatternsInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/LowLevelInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/NativeCrossInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/OperatingInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/ProgrammingBasicsInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/ProgrammingInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/UIUXInnerPage.dart';
import 'package:codergram/Pages/InnerCategorie/WebBasicsInnerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LearningPage extends StatefulWidget {
  @override
  _LearningPageState createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  List<String> _names = [
    "Programming Basics",
    "Algorithms & Data Structures",
    "Design Patterns",
    "Web Basics",
    "Programming Languages",
    "Native-Cross Platform Development",
    "UI-UX",
    "Low Level Programming",
    "Databases",
    "Operating Systems",
  ];
  List<IconData> _icons = [
    AntDesign.Trophy,
    Feather.code,
    MaterialCommunityIcons.lock_pattern,
    FontAwesome5Brands.html5,
    FontAwesome.code,
    FontAwesome5Brands.react,
    MaterialCommunityIcons.material_design,
    MaterialCommunityIcons.progress_wrench,
    Feather.database,
    FontAwesome5Brands.linux,
  ];
  List<Color> _colors = [
    Colors.amber,
    Colors.black,
    Colors.blueGrey,
    Colors.orange,
    Colors.green,
    Colors.lightBlue,
    Colors.lime,
    Colors.grey,
    Colors.pink,
    Colors.purple,
  ];
  List<String> _subtitles = [
    "Everything you need to know for coding...",
    "Advanced Structures like linked lists, trees...",
    "Design patterns by gang of four...",
    "Basics like HTML5, CSS3, JS and frameworks...",
    "Every programming langugae guidelines...",
    "Android-IOS native development, Flutter and React-Native...",
    "Learn how to create UI-UX...",
    "Assembly programming with embedded systems...",
    "Learn SQL, GraphQL, MySQL etc. alogside with Firebase and AWS...",
    "Learn UNIX and x86..."
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        title: Text(
          "Learn",
          style: TextStyle(color: Colors.blueGrey),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Feather.arrow_left,
            color: Colors.blueGrey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(16),
          shrinkWrap: true,
          itemCount: _names.length,
          itemBuilder: (_, i) {
            return ListTile(
              onTap: () {
                Widget _page;
                switch (i) {
                  case 0:
                    _page = ProgrammingBasicsInnerPage();
                    break;
                  case 1:
                    _page = AlgoInnerPage();
                    break;
                  case 2:
                    _page = DesignPatternsInnerPage();
                    break;
                  case 3:
                    _page = WebBasicsInnerPage();
                    break;
                  case 4:
                    _page = ProgrammingInnerPage();
                    break;
                  case 5:
                    _page = NativeCrossInnerPage();
                    break;
                  case 6:
                    _page = UIUXInnerPage();
                    break;
                  case 7:
                    _page = LowLevelInnerPage();
                    break;
                  case 8:
                    _page = DatabaseInnerPage();
                    break;
                  case 9:
                    _page = OperatingInnerPage();
                    break;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => _page,
                  ),
                );
              },
              isThreeLine: true,
              leading: Icon(
                _icons[i],
                color: _colors[i],
              ),
              title: Text(_names[i]),
              subtitle: Text(_subtitles[i]),
              trailing: Icon(Feather.chevron_right),
            );
          }),
    );
  }
}
