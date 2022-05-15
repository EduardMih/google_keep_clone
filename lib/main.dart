import 'package:flutter/material.dart';
import 'package:google_keep_clone/models/note_model.dart';
import 'package:google_keep_clone/styles/styles.dart';
import 'package:google_keep_clone/styles/theme_manager.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/all_notes/all_notes.dart';

ThemeManager _themeManager = ThemeManager();

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());

  await Hive.openBox('noteBox');

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: AllNotesView(themeManager: _themeManager),
      theme: Styles.lightTheme,
      darkTheme: Styles.darkTheme,
      themeMode: _themeManager.themeMode
    );

  }

  void themeListener()
  {
    if(mounted)
    {
      setState(() {
      });
    }
  }
}


/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home: AllNotesView(themeManager: _themeManager),
      theme: Styles.lightTheme,
      darkTheme: Styles.darkTheme,
      themeMode: _themeManager.themeMode
    );

  }
}
*/
