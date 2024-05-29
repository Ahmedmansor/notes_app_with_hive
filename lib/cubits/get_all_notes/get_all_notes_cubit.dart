import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_with_hive/models/note_model.dart';

import '../../resource/const.dart';

part 'get_all_notes_state.dart';

class GetAllNotesCubit extends Cubit<GetAllNotesState> {
  GetAllNotesCubit() : super(GetAllNotesInitial());

  static GetAllNotesCubit get(context) => BlocProvider.of(context);

  void getAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = notesBox.values.toList();
    emit(GetAllNotesSuccess(notes));
  }
}
