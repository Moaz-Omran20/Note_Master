import 'package:flutter/material.dart';
import 'package:note/views/note_view.dart';

void main() {
  runApp(const NoteMaster());
}


class NoteMaster extends StatelessWidget {
  const NoteMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: const NotesView(),

    ) ;
  }
}

