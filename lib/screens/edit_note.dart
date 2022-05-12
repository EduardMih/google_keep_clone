import 'package:flutter/material.dart';
import '../models/note_model.dart';

class EditNoteView extends StatefulWidget {

  EditNoteView({Key? key}) : super(key: key);

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Note"),
      ),
      body: const Center(child: Text("Edit note")),
    );

  }
}
