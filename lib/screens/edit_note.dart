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
      appBar: AppBar(
        title: const Text("Edit Note"),
      ),
      body: _getBody(),
      bottomNavigationBar: _getBottomNavigationBar(),
      
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
            maxLength: 5000,
            textCapitalization: TextCapitalization.sentences,
          )
        ],
      ),
    );

  }

  BottomAppBar _getBottomNavigationBar()
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
                  icon: const Icon(Icons.add_box)
                ),
                IconButton(
                  onPressed: () => {}, 
                  icon: const Icon(Icons.palette)
                )
            ]
          ),
          Text("Edited 12:00"),
          IconButton(
            onPressed: () => {}, 
            icon: const Icon(Icons.more_vert)
          )
        ],
      ),
    );

  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _contentTextController.dispose();
    super.dispose();
  }
}
