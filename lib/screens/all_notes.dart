import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/edit_note.dart';


class AllNotesView extends StatefulWidget {

  const AllNotesView({Key? key}) : super(key: key);

  @override
  State<AllNotesView> createState() => _AllNotesViewState();
}

class _AllNotesViewState extends State<AllNotesView> {
  bool _listView = true;

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
      
        appBar: _getAppBar(),
        body: getBody(),
        floatingActionButton: _getFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: _getBottomAppBar(),
        );
  }

  AppBar _getAppBar()
  {

    
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      leading: IconButton(
        onPressed: () => {},
        icon: Icon(Icons.menu_outlined),
        ),
        title: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search'
            ),
            autofocus: false,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _listView = !_listView;
              });
            }, 
            icon: Icon(_listView ? Icons.view_list : Icons.grid_view)),
          IconButton(
            onPressed: () {
              
            }, 
            icon: Icon(Icons.mode)
          )
        ],
      elevation: 0.2,

    );
    
    
  }

  FloatingActionButton _getFloatingActionButton()
  {
    return FloatingActionButton(
          child:  Icon(Icons.note_add, color: Theme.of(context).colorScheme.onPrimary),
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

  BottomAppBar _getBottomAppBar()
  {

    return BottomAppBar(
          color: Theme.of(context).colorScheme.primary,
          elevation: 0.2,
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
