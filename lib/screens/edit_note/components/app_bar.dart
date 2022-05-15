import 'package:flutter/material.dart';

AppBar getAppBar(BuildContext context)
  {

    return AppBar(
      backgroundColor: Colors.transparent,
      //foregroundColor: Theme.of(context).colorScheme.secondary,
      leading: BackButton(color: Theme.of(context).colorScheme.onPrimary),
      elevation: 0.0,
      actions: [
        IconButton(
          onPressed: () => {}, 
          icon: Icon(Icons.pin_drop_outlined, color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.50))),
        IconButton(
          onPressed: () => {}, 
          icon: Icon(Icons.add_alert_outlined, color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.50))),
        IconButton(
          onPressed: () => {}, 
          icon: Icon(Icons.archive_outlined, color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.50)))
      ],
    );

  }
  