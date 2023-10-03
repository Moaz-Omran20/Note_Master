import 'package:flutter/material.dart';
import 'package:note/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  int maxLines;
  void Function(String?)? onSaved;

  CustomTextField({super.key, required this.hintText, this.maxLines = 1,this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty??true) {
          return "Field is required";
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
