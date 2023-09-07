part of 'notes_cubit.dart';

@immutable
abstract class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}

class NotesCubitLoading extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {}

class NotesCubitFailure extends NotesCubitState {
  final String errMessage;

  NotesCubitFailure({
    required this.errMessage,
  });
}
