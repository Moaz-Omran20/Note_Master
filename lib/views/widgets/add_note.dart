import 'package:flutter/material.dart';

import 'custom_textfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomTextField(),
        ],
      ),
    );
  }
}
