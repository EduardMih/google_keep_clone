import 'package:flutter/material.dart';
import 'package:google_keep_clone/models/note_model.dart';
import 'package:google_keep_clone/screens/all_notes/components/grid_view.dart';
import 'package:google_keep_clone/screens/all_notes/components/list_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

Widget getBody(Box box, bool listView)
 {
    List<Note> notes = List.empty(growable: true);

    return ValueListenableBuilder(
      valueListenable: box.listenable(), 
      builder: (context, Box box, widget) {

        notes.clear();

        for(int i = 0; i < box.length; i++)
        {
          notes.add(box.getAt(i));
        }

        return listView ? CardList(
          noteCount: box.length, 
          notes: notes
          ) :
          CardGrid(
          noteCount: box.length, 
          notes: notes
          );

      }
    );

  }