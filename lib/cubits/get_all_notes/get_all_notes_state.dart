part of 'get_all_notes_cubit.dart';

@immutable
sealed class GetAllNotesState {}

final class GetAllNotesInitial extends GetAllNotesState {}

//--------------------------------

final class GetAllNotesSucess extends GetAllNotesState {}
