import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/edit_note.dart';


class CardGrid extends StatefulWidget {
  CardGrid({Key? key}) : super(key: key);

  @override
  State<CardGrid> createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context, constraints) {

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: constraints.maxWidth > 700 ? 4 : 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16
      ),
      itemCount: 15, 
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
  
  });
  }
}
