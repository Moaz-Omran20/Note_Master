import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {

  final String title;
  final IconData icon;
  void Function()? onPressed;

   CustomAppBar({super.key, required this.title,required this.icon,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 26),
        ),
        Spacer(),
        CustomAppBarIcon(icon: icon,onPressed: onPressed),
      ],
    );
  }
}
