import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder:(context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: NoteItem(),
      );
    }, itemCount: 10 ,);
  }
}
