import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_note_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:my_first_note_app/widgets/add_note_bottom_sheet.dart';
import 'package:my_first_note_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
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
        body: NoteViewBody(),
      ),
    );
  }
}
