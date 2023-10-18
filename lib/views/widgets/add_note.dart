import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note/constants/colors.dart';
import 'package:note/cubits/add_notes/add_notes_cubit.dart';
import 'package:note/models/note_model.dart';
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
          ColorsListView(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                var currentDate = DateTime.now();
                var formatedDate = DateFormat.yMMMEd().format(currentDate);
                var noteModel = NoteModel(
                    title: title!,
                    content: subtitle!,
                    date: formatedDate.toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  bool isActive;
  Color color;

  ColorItem({required this.isActive, required this.color});

  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 35,
            backgroundColor: color,
          );
  }
}

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
