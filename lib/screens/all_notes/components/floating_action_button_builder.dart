import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/edit_note/edit_note.dart';

FloatingActionButton getFloatingActionButton(BuildContext context)
  {
    return FloatingActionButton(
          child:  Icon(Icons.add, color: Theme.of(context).colorScheme.onPrimary),
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => EditNoteView()));
          },
    );

  }
  