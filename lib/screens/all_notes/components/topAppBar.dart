import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget {
  bool listView;
  final Function changeViewMode;

  TopAppBar({Key? key, required this.changeViewMode, required this.listView}) : super(key: key);

  @override
  State<TopAppBar> createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {

    return Center(
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
            onPressed: () => widget.changeViewMode(), 
            icon: Icon(widget.listView ? Icons.view_list : Icons.grid_view)),
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
