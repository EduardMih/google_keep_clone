import 'package:flutter/material.dart';

BottomAppBar getBottomAppBar(BuildContext context)
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
  