// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel noteModel) async {
    try {
      emit(AddNoteLoading());
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      await NotesBox.add(noteModel);
      emit(AddNoteSuccess());
    } catch (e) {
      print(e.toString());
      emit(AddNoteFailure(e.toString()));
    }
  }
}
