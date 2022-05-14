import 'package:flutter/material.dart';
import 'package:google_keep_clone/models/note_model.dart';
import 'package:google_keep_clone/screens/edit_note.dart';
import 'package:hive/hive.dart';


class CardList extends StatefulWidget {
  final int noteCount;
  List<Note> notes;

  CardList({Key? key, required this.noteCount, required this.notes}) : super(key: key);

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      padding: const EdgeInsets.all(8),
        itemCount: widget.noteCount,
        itemBuilder: (BuildContext context, int index) {
          
          return Card(
            
            elevation: 0,
            color: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary,
                width: 2
              )
              ),
            child: ListTile(
              onTap: () {
                print("$index");
              },
              title: Padding(
                padding: const EdgeInsets.all(7),
                child: Text(widget.notes[index].title),
              ),
              
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 7, right: 7, bottom: 7),
                child: Text(widget.notes[index].content)
              ),
          ))
          ;
        },
      );

  }
}

