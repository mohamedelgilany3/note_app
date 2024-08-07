import 'package:flutter/material.dart';
import 'package:my_first_note_app/widgets/add_note_bottom_sheet.dart';
import 'package:my_first_note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              });
        },
        backgroundColor: Colors.cyan[300],
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
