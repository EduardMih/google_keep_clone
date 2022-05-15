import 'package:flutter/material.dart';

Widget getBottomModalMenu(BuildContext context, Function deleteNote)
  {

    return Container(
                    color: Theme.of(context).colorScheme.primary,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        TextButton.icon(
                           style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => deleteNote(), 
                          icon: Icon(Icons.delete_outline, color: Theme.of(context).colorScheme.onPrimary),
                          label: Text('Delete', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                        ),
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => {}, 
                          icon: Icon(Icons.copy_outlined, color: Theme.of(context).colorScheme.onPrimary),
                          label: Text('Make a copy', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                        ),
                        TextButton.icon(
                           style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => {}, 
                          icon: Icon(Icons.share_outlined, color: Theme.of(context).colorScheme.onPrimary),
                          label: Text('Send', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                        ),
                        TextButton.icon(
                           style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => {}, 
                          icon: Icon(Icons.person_add_outlined, color: Theme.of(context).colorScheme.onPrimary),
                          label: Text('Add collaborator', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                        ),
                        TextButton.icon(
                           style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => {}, 
                          icon: Icon(Icons.label_outline, color: Theme.of(context).colorScheme.onPrimary),
                          label: Text('Labels', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                        )
                      ])
    );


  }