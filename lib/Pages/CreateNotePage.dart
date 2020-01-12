import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:zefyr/zefyr.dart';
import 'package:quill_delta/quill_delta.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  ZefyrController _controller;
  FocusNode _focusNode;
  String _timestamp;
  String _path;
  @override
  void initState() {
    super.initState();
    _timestamp = Uuid().v1();
    _focusNode = FocusNode();
    _loadDocument().then((document) {
      setState(() {
        _controller = ZefyrController(document);
      });
    });
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<NotusDocument> _loadDocument() async {
    _path = await _localPath;
    final file = File(_path + "/notes/" + _timestamp + ".json");
    if (await file.exists()) {
      final contents = await file
          .readAsString()
          .then((data) => Future.delayed(Duration(seconds: 1), () => data));
      return NotusDocument.fromJson(jsonDecode(contents));
    }
    final Delta delta = Delta()..insert("Type Here\n");
    return NotusDocument.fromDelta(delta);
  }

  void _saveDocument(GlobalKey<ScaffoldState> key) {
    // Notus documents can be easily serialized to JSON by passing to
    // `jsonEncode` directly:
    final contents = jsonEncode(_controller.document);
    // For this example we save our document to a temporary file.
    final file = File(_path + "/notes/" + _timestamp + ".json");
    // And show a snack bar on success.
    file.writeAsString(contents).then((_) {
      key.currentState.showSnackBar(
        SnackBar(
          content: Text(
            "Saved in ${_path + "/notes/" + _timestamp + ".json"}",
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        title: Text(
          "New Note",
          style: TextStyle(
            color: Colors.blueGrey,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Feather.arrow_left,
            color: Colors.blueGrey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Feather.check,
              color: Colors.blueGrey,
            ),
            onPressed: () {
              _saveDocument(_key);
            },
          ),
        ],
      ),
      body: ZefyrScaffold(
        child: ZefyrEditor(
          physics: AlwaysScrollableScrollPhysics(),
          mode: ZefyrMode.edit,
          autofocus: true,
          padding: EdgeInsets.all(16),
          controller: _controller,
          focusNode: _focusNode,
        ),
      ),
      resizeToAvoidBottomPadding: true,
    );
  }
}
