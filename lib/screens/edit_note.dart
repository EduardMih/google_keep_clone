import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/note_model.dart';

class EditNoteView extends StatefulWidget {

  EditNoteView({Key? key}) : super(key: key);

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  Note? previousNote;
  Note? currentNote;

  final _titleTextController = TextEditingController();
  final _contentTextController = TextEditingController();
  late final Box box;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
      bottomNavigationBar: _getBottomNavigationBar(context),
      
    );

  }

  @override
  void initState() {
    super.initState();

    box = Hive.box('noteBox');
    
  }

  void _saveNote()
  {
    currentNote = Note.fromInputData(
      _titleTextController.text, 
      _contentTextController.text, 
      Colors.red.value);

      box.add(currentNote);

      print("Note saved!");

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
                    color: Colors.white,
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
                          onPressed: () => {}, 
                          icon: const Icon(Icons.delete_outline),
                          label: const Text('Delete'),
                        ),
                        TextButton.icon(
                          style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => {}, 
                          icon: const Icon(Icons.copy_outlined),
                          label: const Text('Make a copy'),
                        ),
                        TextButton.icon(
                           style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => {}, 
                          icon: const Icon(Icons.share_outlined),
                          label: const Text('Send'),
                        ),
                        TextButton.icon(
                           style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => {}, 
                          icon: const Icon(Icons.person_add_outlined),
                          label: const Text('Add collaborator'),
                        ),
                        TextButton.icon(
                           style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(20),
                            alignment: Alignment.centerLeft
                          ),
                          onPressed: () => {}, 
                          icon: const Icon(Icons.label_outline),
                          label: const Text('Labels'),
                        )
                      ])
    );


  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _contentTextController.dispose();
    _saveNote();
    //Hive.close();
    super.dispose();
  }
}
