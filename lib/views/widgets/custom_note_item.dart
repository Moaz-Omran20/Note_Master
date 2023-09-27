import 'package:flutter/material.dart';
import 'package:note/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return EditNoteView();
          },
        ));
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Text(
                    'Flutter Description for notes app',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "May 21,2023",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
