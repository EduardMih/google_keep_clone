import 'package:flutter/material.dart';

AppBar getAppBar(BuildContext context)
  {

    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.secondary,
      leading: BackButton(color: Theme.of(context).colorScheme.onPrimary),
      elevation: 0.0,
      actions: [
        IconButton(
          onPressed: () => {}, 
          icon: const Icon(Icons.pin_drop_outlined)),
        IconButton(
          onPressed: () => {}, 
          icon: const Icon(Icons.add_alert_outlined)),
        IconButton(
          onPressed: () => {}, 
          icon: const Icon(Icons.archive_outlined))
      ],
    );

  }
  