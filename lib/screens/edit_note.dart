import 'package:flutter/material.dart';
import 'package:google_keep_clone/screens/all_notes/all_notes.dart';
import 'package:hive/hive.dart';
import '../models/note_model.dart';

class EditNoteView extends StatefulWidget {
  final int? index;
  final Note? previousnote;
  Note? currentNote;

  EditNoteView({Key? key, this.index, this.previousnote}) : super(key: key);

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {

  late final TextEditingController _titleTextController;
  late final TextEditingController _contentTextController;
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

    _titleTextController = TextEditingController(
      text: widget.index == null ? "" : widget.previousnote?.title);

    _contentTextController = TextEditingController(
      text: widget.index == null ? "" : widget.previousnote?.content
    );
    
  }

  void _saveNote()
  {
    if(widget.previousnote == null)
    {
      if((_titleTextController.text != "") || (_contentTextController.text != ""))
      {
        widget.currentNote = Note.fromInputData(
          _titleTextController.text, 
          _contentTextController.text, 
         Colors.red.value);

         box.add(widget.currentNote);

         print("New note added");
      }
    }

    else

    {
      widget.currentNote = widget.previousnote?.updateExistingNote(
        title: _titleTextController.text,
        content:  _contentTextController.text,
      );

      widget.currentNote?.save();

      print("Note updated");

    }

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
            cursorColor: Theme.of(context).colorScheme.onPrimary,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Title'
            ),
            controller: _titleTextController,
          ),
          TextField(
            cursorColor: Theme.of(context).colorScheme.onPrimary,
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
          Text(widget.previousnote != null ? "Edited ${_getModifiedDateFormated(widget.previousnote!.modifiedAt)}" : "New note"),
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
                          onPressed: () {
                            if(widget.index != null)
                            {
                              box.deleteAt(widget.index!);
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => const AllNotesView()));

                            }
                          }, 
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

  String _getModifiedDateFormated(DateTime datetime)
  {
    
    return "${datetime.year}-${datetime.month}-${datetime.day} ${datetime.hour}:${datetime.minute}";

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
