import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_first_note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
}
