import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
          CustomAppBar(title: "Edit Note" ,icon:Icons.done),
          ],
        ),
      ),
    );
  }
}
