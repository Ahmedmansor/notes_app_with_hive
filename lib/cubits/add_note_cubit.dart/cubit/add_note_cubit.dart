import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_with_hive/models/note_model.dart';
import 'package:notes_app_with_hive/resource/const.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  static AddNoteCubit get(context) => BlocProvider.of(context);
  addNote(NoteModel note) async {
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSucess());
    } on Exception catch (e) {
      emit(AddNoteError(e.toString()));
    }
  }
}
