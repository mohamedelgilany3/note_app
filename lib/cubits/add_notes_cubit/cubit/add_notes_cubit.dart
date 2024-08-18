import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_first_note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  AddNote(NoteModel note) {}
}
