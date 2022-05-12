import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/edit_note.dart';


class AllNotesView extends StatefulWidget {

  const AllNotesView({Key? key}) : super(key: key);

  @override
  State<AllNotesView> createState() => _AllNotesViewState();
}

class _AllNotesViewState extends State<AllNotesView> {
  Widget getBody()
  {

    return Center(child: const Text("Main Content"));

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("App bar")),
        body: getBody(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.note_add),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => EditNoteView()));
          },
          backgroundColor: Colors.blue,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.redAccent,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.menu, color: Colors.white)),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: IconButton(
                onPressed: () => {}, 
                icon: const Icon(Icons.abc, color: Colors.white))
              )
          ]),
        ),
        ),
        );

  }
}
