part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSucess extends NotesState {
  final List<NoteModel> notes;

  NotesSucess(this.notes);
}

class NotesFaliure extends NotesState {
  final String errMessage;

  NotesFaliure(this.errMessage);
}
