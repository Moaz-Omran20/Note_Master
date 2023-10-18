import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_notes/add_notes_cubit.dart';

import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  bool? isActive;
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xFF219C90),
    const Color(0xFFE9B824),
    const Color(0xFFEE9322),
    const Color(0xFFD83F31),
    const Color(0xFFA7D397),
    const Color(0xFF016A70),
    const Color(0xFFD2DE32),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    BlocProvider.of<AddNotesCubit>(context).color = colors[index] ;
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