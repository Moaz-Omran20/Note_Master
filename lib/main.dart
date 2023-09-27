import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/views/note_view.dart';

import 'constants/hive.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp( const NoteMaster());
}


class NoteMaster extends StatelessWidget {
  const NoteMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      home: const NotesView(),

    ) ;
  }
}

