import 'package:flutter/material.dart';

class SongEditor extends StatefulWidget {
  SongEditor();

  @override
  _SongEditorState createState() => _SongEditorState();
}

class _SongEditorState extends State<SongEditor> {
  String _title = 'Song Title';
  bool _editMode = false;

  _onPress() {}

  Widget titleText(BuildContext context) {
    return _editMode
        ? TextFormField(
            autofocus: true,
            initialValue: _title,
            onFieldSubmitted: (text) => setState(() {
                  _editMode = false;
                  _title = text;
                }))
        : InkWell(onTap: () {
            setState(() {
              _editMode = true;
            });
          }, child: Text(_title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: titleText(context),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.save),
                onPressed: _onPress,
              )
            ]),
        body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    //TextFormField(
                    child: TextField(
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Lyrics',
//                            hintMaxLines: 3,
                      ),
                    ),
                    color: Colors.red,
                  ))
            ]));
  }
}
