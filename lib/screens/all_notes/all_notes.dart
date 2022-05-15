import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/all_notes/components/body.dart';
import 'package:google_keep_clone/screens/all_notes/components/bottom_appBar_builder.dart';
import 'package:google_keep_clone/screens/all_notes/components/floating_action_button_builder.dart';
import 'package:google_keep_clone/screens/all_notes/components/topAppBar.dart';
import 'package:hive_flutter/hive_flutter.dart';


class AllNotesView extends StatefulWidget {
  const AllNotesView({Key? key}) : super(key: key);

  @override
  State<AllNotesView> createState() => _AllNotesViewState();
}

class _AllNotesViewState extends State<AllNotesView> {
  bool _listView = true;
  late final Box box;

  @override
  void initState() {
    super.initState();
    box = Hive.box('noteBox');
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
        appBar: PreferredSize(
          child: TopAppBar(changeViewMode: changeViewMode, listView: _listView,),
          preferredSize: const Size.fromHeight(120),
        ),
        body: getBody(box, _listView),
        floatingActionButton: getFloatingActionButton(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: getBottomAppBar(context),
        backgroundColor: Colors.black26,
        );
  }

  void changeViewMode()
  {
    setState(() {
      _listView = !_listView;
    });
  }


  
/*
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
  */


}

