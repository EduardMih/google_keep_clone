import 'package:flutter/material.dart';
import '../models/note_model.dart';

class EditNoteView extends StatefulWidget {
  final Note? previousNote;
  Note? newNote;

  EditNoteView({Key? key, this.previousNote}) : super(key: key);

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    
    return Center(child: const Text("Edit Note"));

  }
}
