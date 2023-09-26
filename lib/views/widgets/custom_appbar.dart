import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 26),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
