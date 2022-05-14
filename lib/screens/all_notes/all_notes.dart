import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/edit_note.dart';
import 'components/list_view.dart';




class AllNotesView extends StatefulWidget {

  const AllNotesView({Key? key}) : super(key: key);

  @override
  State<AllNotesView> createState() => _AllNotesViewState();
}

class _AllNotesViewState extends State<AllNotesView> {
  bool _listView = true;

  Widget _getBody()
  {

    return CardList();

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
        appBar: PreferredSize(
          child: custom(),
          preferredSize: Size.fromHeight(120),
        ),
        body: _getBody(),
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

  Widget custom()
  {

    return 
    Center(
        child: Container(
    //padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
    margin: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: Theme.of(context).colorScheme.onPrimary),
      color: Theme.of(context).colorScheme.primary
      
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => {}, 
          icon: const Icon(Icons.menu)
        ),
        const SizedBox(
          width: 100,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search'
            ),
            autofocus: false,
          )
        ), 

        Row(children: [       
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
            icon: const Icon(Icons.mode)
          )
      ],
      mainAxisAlignment: MainAxisAlignment.end,
      )
      ],
    )
    ),
  );
    

  }


}

