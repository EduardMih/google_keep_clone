import 'package:flutter/material.dart';

BottomAppBar getBottomNavigationBar(BuildContext context, String message, Function showBottomMenu)
  {
    
    return BottomAppBar(
      elevation: 0.0,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children:  <Widget>[
                IconButton(
                  onPressed: () => {}, 
                  icon: const Icon(Icons.add_box_outlined)
                ),
                IconButton(
                  onPressed: () => {}, 
                  icon: const Icon(Icons.palette_outlined)
                )
            ]
          ),
          Text(message),
          IconButton(
            onPressed: () => showBottomMenu(), 
            icon: const Icon(Icons.more_vert)
          )
        ],
      ),
    );

  }
