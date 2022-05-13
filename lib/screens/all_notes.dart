import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/edit_note.dart';

const iconColor = Color(0xFF5F6368);

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

    return Scaffold(
        appBar: AppBar(title: const Text("App bar"), ),
        body: getBody(),
        floatingActionButton: _getFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: _getBottomAppBar(),
        );
  }

  FloatingActionButton _getFloatingActionButton()
  {

    return FloatingActionButton(
          child: const Icon(Icons.note_add),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => EditNoteView()));
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
    );

  }

  BottomAppBar _getBottomAppBar()
  {

    return BottomAppBar(
          color: Theme.of(context).colorScheme.onSecondary,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            IconButton(
              onPressed: () => {}, 
              icon: const Icon(Icons.check_box, color: iconColor)
              ),
            IconButton(
              onPressed: () => {}, 
              icon: const Icon(Icons.brush_sharp, color: iconColor)
              ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.mic, color: iconColor)
              ),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: IconButton(
                onPressed: () => {}, 
                icon: const Icon(Icons.insert_photo, color: iconColor))
              )
          ]),
        );

  }


}
