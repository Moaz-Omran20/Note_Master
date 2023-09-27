import 'package:flutter/material.dart';
import 'package:note/constants/colors.dart';
import 'package:note/views/widgets/custom_button.dart';

import 'custom_textfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              hintText: "Title",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: "Content",
              maxLines: 6,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomButton(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
