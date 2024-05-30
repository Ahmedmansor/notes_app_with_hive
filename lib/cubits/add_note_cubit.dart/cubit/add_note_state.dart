part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

//--------------------------------
final class AddNoteLoading extends AddNoteState {}

final class AddNoteSucess extends AddNoteState {}

final class AddNoteError extends AddNoteState {
  final String error;
  AddNoteError(this.error);
}
//! -------------------------

final class TextFormFieldValidateSucess extends AddNoteState {}

final class TextFormFieldValidateError extends AddNoteState {}

//! -------------------------
final class ChangeColor extends AddNoteState {}
