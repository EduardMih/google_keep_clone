import 'package:flutter/material.dart';

class BodyComponent extends StatefulWidget {
  final TextEditingController titleTextController;
  final TextEditingController contentTextController;

  const BodyComponent({Key? key, required this.titleTextController, required this.contentTextController}) : super(key: key);

  @override
  State<BodyComponent> createState() => _BodyComponentState();
}

class _BodyComponentState extends State<BodyComponent> {
  @override
  Widget build(BuildContext context) {

    return Container(
      //color: Theme.of(context).colorScheme.background,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            cursorColor: Theme.of(context).colorScheme.onPrimary,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Title'
            ),
            controller: widget.titleTextController,
          ),
          TextField(
            cursorColor: Theme.of(context).colorScheme.onPrimary,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Content'
            ),
            controller: widget.contentTextController,
            maxLines: null,
            textCapitalization: TextCapitalization.sentences,
          )
        ],
      ),
    );

    

  }
}
