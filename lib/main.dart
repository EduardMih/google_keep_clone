import 'package:flutter/material.dart';
import 'package:google_keep_clone/models/note_model.dart';
import 'package:google_keep_clone/styles/styles.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/all_notes/all_notes.dart';

const color = Color(0xFF5F6368);
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());

  await Hive.openBox('noteBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home: const AllNotesView(),
      theme: Styles.lightTheme,
      darkTheme: Styles.darkTheme,
      themeMode: ThemeMode.dark,
    );

  }
}
