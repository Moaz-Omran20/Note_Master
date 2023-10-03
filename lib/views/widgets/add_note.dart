import 'package:flutter/material.dart';
import 'package:note/constants/colors.dart';
import 'package:note/views/widgets/custom_button.dart';

import 'custom_textfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: "SubTitle",
            maxLines: 6,
          ),
          const SizedBox(
            height: 20,
          ),
           CustomButton(onTap: () {
             if(formKey.currentState!.validate())
               {
                 formKey.currentState!.save();
               }
             else
               {
                 autovalidateMode = AutovalidateMode.always;
                 setState(() {

                 });
               }
           },),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
