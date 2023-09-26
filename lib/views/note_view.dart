import 'package:flutter/material.dart';
import 'package:note/views/widgets/add_note.dart';
import 'package:note/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        topLeft: Radius.circular(18))),
                context: context,
                builder: (context) {
                  return AddNote();
                },
              );
            },
            child: Icon(Icons.add)),
        body: NotesViewBody());
  }
}
