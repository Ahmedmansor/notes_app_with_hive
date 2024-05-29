part of 'get_all_notes_cubit.dart';

@immutable
sealed class GetAllNotesState {}

final class GetAllNotesInitial extends GetAllNotesState {}

//--------------------------------
final class GetAllNotesSuccess extends GetAllNotesState {
  final List<NoteModel> notes;
  GetAllNotesSuccess(this.notes);
}
