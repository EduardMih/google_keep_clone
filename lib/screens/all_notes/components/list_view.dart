import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/edit_note.dart';


class CardList extends StatefulWidget {
  CardList({Key? key}) : super(key: key);

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      padding: const EdgeInsets.all(8),
        itemCount: 10,
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
                padding: EdgeInsets.all(7),
                child: Text("Title $index"),
              ),
              
              subtitle: Padding(
                padding: EdgeInsets.only(left: 7, right: 7, bottom: 7),
                child: const Text("sdlfnskgnkjsndklfnlskangkndgnjdfngjnmsngm dsfslknkm sdfnks sdfskm sdfnskf")
              ),
          ))
          ;
        },
      );

  }
}

