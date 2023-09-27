import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
          const CustomAppBar(title: "Edit Note" ,icon:Icons.done),
            SizedBox(height: 30,),
            CustomTextField(hintText:"Title",),
            SizedBox(height: 20,),
            CustomTextField(hintText:"Content",maxLines: 5,),
          ],
        ),
      ),
    );
  }
}
