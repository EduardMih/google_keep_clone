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
          backgroundColor: Theme.of(context).colorScheme.primary,
          splashColor: Theme.of(context).colorScheme.primary,
          focusColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.primary,
          hoverColor: Theme.of(context).colorScheme.primary,
    );

  }
  