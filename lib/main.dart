import 'package:codergram/Pages/PageCollector.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(Codergram());
}

class Codergram extends StatefulWidget {
  @override
  _CodergramState createState() => _CodergramState();
}

class _CodergramState extends State<Codergram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "GoogleSans",
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      title: "Codergram",
      home: PageCollector(),
    );
  }
}
