import 'package:flutter/material.dart';
import 'package:google_keep_clone/models/note_model.dart';
import 'package:google_keep_clone/screens/edit_note/edit_note.dart';
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
            //color: Theme.of(context).colorScheme.primary,
            color: Color(widget.notes[index].color),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.75),
                width: 1,
                
              )
              ),
            child: ListTile(
              onTap: () {
                print("$index");
                Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => EditNoteView(index: index, previousnote: widget.notes[index])));
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

