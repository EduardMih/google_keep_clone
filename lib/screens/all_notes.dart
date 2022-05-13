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

    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Center(child: const Text("Main Content")),
       );

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text("App bar"), elevation: 0),
        body: getBody(),
        floatingActionButton: _getFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: _getBottomAppBar(),
        );
  }

  FloatingActionButton _getFloatingActionButton()
  {

    return FloatingActionButton(
          child:  Icon(Icons.note_add, color: Theme.of(context).colorScheme.onPrimary),
          onPressed: () {
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

  BottomAppBar _getBottomAppBar()
  {

    return BottomAppBar(
          color: Theme.of(context).colorScheme.primary,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            IconButton(
              onPressed: () => {}, 
              icon: Icon(Icons.check_box_outlined, color: Theme.of(context).colorScheme.onPrimary)
              ),
            IconButton(
              onPressed: () => {}, 
              icon: Icon(Icons.brush_outlined, color: Theme.of(context).colorScheme.onPrimary)
              ),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.mic_outlined, color: Theme.of(context).colorScheme.onPrimary)
              ),
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: IconButton(
                onPressed: () => {}, 
                icon: Icon(Icons.insert_photo_outlined, color: Theme.of(context).colorScheme.onPrimary))
              )
          ]),
        );

  }


}
