import 'package:flutter/material.dart';
import '../models/note_model.dart';

class EditNoteView extends StatefulWidget {

  EditNoteView({Key? key}) : super(key: key);

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  final _titleTextController = TextEditingController();
  final _contentTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
      bottomNavigationBar: _getBottomNavigationBar(context),
      
    );

  }

  Widget _getBody()
  {

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Title'
            ),
            controller: _titleTextController,
          ),
          TextField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Content'
            ),
            controller: _contentTextController,
            maxLines: null,
            textCapitalization: TextCapitalization.sentences,
          )
        ],
      ),
    );

  }

  BottomAppBar _getBottomNavigationBar(BuildContext context)
  {
    
    return BottomAppBar(
      elevation: 0.0,
      color: Colors.white,
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
          Text("Edited 12:00"),
          IconButton(
            onPressed: () => {
              showModalBottomSheet(
                context: context, 
                builder: _getBottomModalMenu
              )
            }, 
            icon: const Icon(Icons.more_vert)
          )
        ],
      ),
    );

  }

  AppBar _getAppBar()
  {

    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.grey,
      leading: const BackButton(color: Colors.black),
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

  Widget _getBottomModalMenu(BuildContext context)
  {

    return Container(
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                          onPressed: () => {}, 
                          icon: const Icon(Icons.delete),
                          label: const Text('Delete'),
                        ),
                        TextButton.icon(
                          onPressed: () => {}, 
                          icon: const Icon(Icons.delete),
                          label: const Text('Delete'),
                        ),
                        TextButton.icon(
                          onPressed: () => {}, 
                          icon: const Icon(Icons.delete),
                          label: const Text('Delete'),
                        ),
                        TextButton.icon(
                          onPressed: () => {}, 
                          icon: const Icon(Icons.delete),
                          label: const Text('Delete'),
                        ),
                        TextButton.icon(
                          onPressed: () => {}, 
                          icon: const Icon(Icons.delete),
                          label: const Text('Delete'),
                        )
                      ])
                  );


  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _contentTextController.dispose();
    super.dispose();
  }
}
