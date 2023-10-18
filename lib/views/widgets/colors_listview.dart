import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  bool? isActive;
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xFF219C90),
    Color(0xFFE9B824),
    Color(0xFFEE9322),
    Color(0xFFD83F31),
    Color(0xFFA7D397),
    Color(0xFF016A70),
    Color(0xFFD2DE32),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 10),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    isActive: currentIndex == index,
                    color: colors[index],
                  )),
            );
          },
          itemCount: colors.length,
          scrollDirection: Axis.horizontal),
    );
  }
}