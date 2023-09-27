import 'package:flutter/material.dart';
import 'package:note/constants/colors.dart';

class CustomTextField extends StatelessWidget {


  String hintText;
  int maxLines;


  CustomTextField({super.key, required this.hintText,this.maxLines=1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildOutlineInputBorder(),
        enabledBorder:buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide:  BorderSide(color:color ?? Colors.white ),
      );
  }
}
