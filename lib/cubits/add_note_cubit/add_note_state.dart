// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucess extends AddNoteState {}

class AddNoteFaliure extends AddNoteState {
  final String errMessage;
  AddNoteFaliure(
    this.errMessage,
  );
}
