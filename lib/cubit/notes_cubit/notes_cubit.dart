import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/notes_cubit/notes_Cubit.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  FetchNotes() {
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      Iterable<NoteModel> notes = NotesBox.values;
      emit(NotesSuccess());
    } catch (e) {
      print(e.toString());
      emit(NotesFailure(e.toString()));
    }
  }
}
