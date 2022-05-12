import 'package:flutter/material.dart';
import 'screens/all_notes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: AllNotesView(),
    );

  }
}